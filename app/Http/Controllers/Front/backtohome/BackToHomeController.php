<?php

namespace App\Http\Controllers\Front\backtohome;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Admin\Video3D\Video3DModel;
use App\Model\Admin\PickCanopy\PickCanopyModel;
use App\Model\Admin\PillerPost\PillerPostModel;
use App\Model\Admin\MasterWidth\MasterWidthModel;
use App\Model\Admin\MasterHeight\MasterHeightModel;
use App\Model\Admin\PickPostLength\PickPostLengthModel;
use App\Model\Admin\PickUpFootPrint\PickUpFootPrintModel;
use App\Model\Admin\PickLouveredPanel\PickLouveredPanelModel;
use App\Model\Admin\PickOverheadShades\PickOverheadShadesModel;
use App\Model\Admin\PickPostMountBracket\PickPostMountBracketModel;
use App\Model\Front\BeforeCheckoutFinalProductModel;
use App\Model\Admin\FinalProduct\FinalProductModel;
use App\Model\Front\Billing_Model;
use App\Model\Front\Shipping_Model;
use Illuminate\Support\Facades\Mail;
use App\Mail\BillingMail;


class BackToHomeController extends Controller
{
    public function show_thankyou_fx(Request $request)
    {
        if($request->session()->has('main_unique_session_key'))
        {
            $get_session_data = $request->session()->get('main_unique_session_key');
        }
        $mainQuery = BeforeCheckoutFinalProductModel::where('unique_session_id',$get_session_data)->get();
        foreach($mainQuery as $mQuery)
        {
            // width query
            $getWidthQuery = MasterWidthModel::where('id',$mQuery->final_width)->get();
            foreach($getWidthQuery as $getW)
            {
                $data['master_width_length'] = $getW->master_width_length;
            }

            // height query
            $getHeightQuery = MasterHeightModel::where('id',$mQuery->final_length)->get();
            foreach($getHeightQuery as $getH)
            {
                $data['master_height_length'] = $getH->master_height_length;
            }

            // overhead shades query
            $getOverheadShadesQuery = PickOverheadShadesModel::where('id',$mQuery->final_overhead)->get();
            foreach($getOverheadShadesQuery as $getOverHead)
            {
                $data['overhead_shades'] = $getOverHead->img_standard_name;
            }

            // piller post query
            $PillerPostModelQuery = PickPostLengthModel::where('id',$mQuery->final_post_length)->get();
            foreach($PillerPostModelQuery as $getP)
            {
                $data['piller_length'] = $getP->posts_length;
            }

            $data['mount_count'] = ucwords($mQuery->final_post_mount_type);
            $data['final_canopy_type'] = ucwords($mQuery->final_canopy_type);
            $data['final_lpanel_type'] = ucwords($mQuery->final_lpanel_type);
            $data['final_price'] = ucwords($mQuery->final_price);


            
        }
        $billingMailQuery = Billing_Model::where('final_checkout_session_id',$get_session_data)->get();
        foreach($billingMailQuery as $billQuery)
        {
            $data['new_username'] = $billQuery->f_name." ".$billQuery->l_name;
            $data['new_useremail'] = $billQuery->email_address;
            $data['new_userOrderId'] = $billQuery->final_checkout_session_id;
            $data['new_billingAddress'] = "";
            if($billQuery->company_name != "" || $billQuery->company_name != null)
            {
                $data['new_billingAddress'] .= " ".$billQuery->company_name;
            }
            if($billQuery->street1_address != "" || $billQuery->street1_address != null)
            {
                $data['new_billingAddress'] .= " ".$billQuery->street1_address;
            }
            if($billQuery->street2_address != "" || $billQuery->street2_address != null)
            {
                $data['new_billingAddress'] .= " ".$billQuery->street2_address;
            }
            if($billQuery->city != "" || $billQuery->city != null)
            {
                $data['new_billingAddress'] .= " ".$billQuery->city;
            }
            if($billQuery->state != "" || $billQuery->state != null)
            {
                $data['new_billingAddress'] .= " ".$billQuery->state;
            }
            if($billQuery->country != "" || $billQuery->country != null)
            {
                $data['new_billingAddress'] .= " ".$billQuery->country;
            }
            if($billQuery->zipcode != "" || $billQuery->zipcode != null)
            {
                $data['new_billingAddress'] .= " ".$billQuery->zipcode;
            }
        }

        $shippingMailQuery = Shipping_Model::where('final_checkout_session_id',$get_session_data)->get();
        foreach($shippingMailQuery as $shippingQuery)
        {
            $data['new_shippingAddress'] = "";
            if($shippingQuery->company_name != "" || $shippingQuery->company_name != null)
            {
                $data['new_shippingAddress'] .= " ".$shippingQuery->company_name;
            }
            if($shippingQuery->street1_address != "" || $shippingQuery->street1_address != null)
            {
                $data['new_shippingAddress'] .= " ".$shippingQuery->street1_address;
            }
            if($shippingQuery->street2_address != "" || $shippingQuery->street2_address != null)
            {
                $data['new_shippingAddress'] .= " ".$shippingQuery->street2_address;
            }
            if($shippingQuery->city != "" || $shippingQuery->city != null)
            {
                $data['new_shippingAddress'] .= " ".$shippingQuery->city;
            }
            if($shippingQuery->state != "" || $shippingQuery->state != null)
            {
                $data['new_shippingAddress'] .= " ".$shippingQuery->state;
            }
            if($shippingQuery->country != "" || $shippingQuery->country != null)
            {
                $data['new_shippingAddress'] .= " ".$shippingQuery->country;
            }
            if($shippingQuery->zipcode != "" || $shippingQuery->zipcode != null)
            {
                $data['new_shippingAddress'] .= " ".$shippingQuery->zipcode;
            }
        }
            
        Mail::to($data['new_useremail'])->send(new BillingMail($data));

        
        if($request->session()->has('main_unique_session_key'))
        {
            $request->session()->forget('main_unique_session_key');
        }
        if($request->session()->has('main_back_session_key'))
        {
            $request->session()->forget('main_back_session_key');
        }
        return view('frontend.pages.thank-you');
    }

    public function index(Request $request)
    {
        $request->session()->put('main_back_session_key', "backSession");
        echo json_encode("success");
    }

    public function forget_s_fx(Request $request)
    {
        if($request->session()->has('main_back_session_key'))
        {
            $request->session()->forget('main_back_session_key');
        }
        echo json_encode("success");
    }

    public function showPageRequest(Request $request)
    {
        $mQuery_check = BeforeCheckoutFinalProductModel::where('unique_session_id',$request->session()->get('main_unique_session_key'))->get();
        foreach($mQuery_check as $mQc)
        {

            /// get final price 
            $html['final_main_product_price'] = $mQc->final_price;

            /// get height
            $get_height_query = MasterHeightModel::where('id',$mQc->final_length)->get();
            foreach($get_height_query as $gHq)
            {
                $html['final_main_height'] = $gHq->master_height_length;
            }

            /// get width
            $get_width_query = MasterWidthModel::where('id',$mQc->final_width)->get();
            foreach($get_width_query as $gWq)
            {
                $html['final_main_width'] = $gWq->master_width_length;
            }


            /// first page
            $master_new_width = $mQc->final_width;
            $master_new_length = $mQc->final_length;
            $master_new_no_of_posts = $mQc->final_no_posts;
            
            $check_price = PickUpFootPrintModel::where(['width_master' => $master_new_width, 'height_master' => $master_new_length, 'posts_master' => $master_new_no_of_posts ])->get();
            $html['master_price'] = 0;
            $html['master_img'] = '';
            if(count($check_price) > 0)
            {
                foreach($check_price as $cQuery)
                {
                    $html['master_price'] = $cQuery->price_master;
                    if($cQuery->img_master != "" || $cQuery->img_master != null)
                    {
                        $html['master_img'] = '<img src="'.str_replace("public","storage/app/public",asset($cQuery->img_master)).'" src="no image" />';
                    }
                    else if($cQuery->img_master == "" || $cQuery->img_master == null)
                    {
                        $html['master_img'] = '';
                    }
                }
            }


            /// second page
            $secondQueryPage = PickOverheadShadesModel::where(['id' => $mQc->final_overhead])->get();
            foreach($secondQueryPage as $sQp)
            {
                // final  loop
                $findQuery = PickOverheadShadesModel::where('admin_action','yes')->get();
                $html['overhead_types'] = "<option value=''>Choose a overhead shades</option>";
                foreach($findQuery as $fQuery)
                {
                    $checked = "";
                    if($fQuery->id == $sQp->id)
                    {
                        $checked = "selected";
                    }
                    $html['overhead_types'] .= "<option value=".$fQuery->id." ".$checked.">".$fQuery->img_standard_name."</option>";
                }
                // end of final loop
                $html['second_page_price'] = $sQp->price_details;
                if($sQp->img_file == "" || $sQp->img_file == null)
                {
                    $html['master_second_img'] = '';
                }
                else
                {
                    $html['master_second_img'] = '<img src="'.str_replace("public","storage/app/public",asset($sQp->img_file)).'" src="no image" />';
                }
            }

            /// fourth page
            $thirdQueryPage = PickPostLengthModel::where(['id' => $mQc->final_post_length])->get();
            foreach($thirdQueryPage as $sQp)
            {
                // final  loop
                $findQuery = PickPostLengthModel::where('admin_action','yes')->get();
                $html['post_length'] = "<option value=''>Choose a overhead shades</option>";
                foreach($findQuery as $fQuery)
                {
                    $checked = "";
                    if($fQuery->id == $sQp->id)
                    {
                        $checked = "selected";
                    }
                    $html['post_length'] .= "<option value=".$fQuery->id." ".$checked.">".$fQuery->posts_length."</option>";
                }
                // end of final loop
                $html['third_page_price'] = $sQp->price_details;
                if($sQp->img_file == "" || $sQp->img_file == null)
                {
                    $html['master_third_img'] = '';
                }
                else
                {
                    $html['master_third_img'] = '<img src="'.str_replace("public","storage/app/public",asset($sQp->img_file)).'" src="no image" />';
                }
            }

            /// fifth page
            if($mQc->final_post_mount_type == "yes")
            {
                $html['pick_post_mount_status'] = "yes";
                $fifthfindQuery =  PickPostMountBracketModel::where('id',$mQc->final_post_mount)->get();
                foreach($fifthfindQuery as $fifthNewQuery)
                {
                    $html['pick_post_mount'] = '<option value="">Choose a pick slap</option>';
                    $chooseQuery = PickPostMountBracketModel::get();
                    
                        foreach($chooseQuery as $cQuery)
                        {    
                            $checked = "";
                            if($cQuery->id == $mQc->final_post_mount)
                            {
                                $checked = "selected";
                            }
                            $html['pick_post_mount'] .= '<option value='.$cQuery->id.' '.$checked.'>'.$cQuery->pick_slap_name.'</option>';
                        }
                    $html['pick_post_mount_price'] = $fifthNewQuery->price_details;
                }
            }
            else if($mQc->final_post_mount_type == "no")
            {
                $html['pick_post_mount_status'] = "no";
            }

            /// sixth page
            if($mQc->final_canopy_type == "yes")
            {
                $html['pick_canopy_status'] = "yes";
                $sixthfindQuery =  PickCanopyModel::get();
                foreach($sixthfindQuery as $sixNewQuery)
                {
                    $html['pick_canopy_mount'] = '<p>'.ucwords($sixNewQuery->canopy_question).'</p>
                    <p>Note: '.$sixNewQuery->canopy_note.'</p>
                    <input type="hidden" name="" id="sixth-pregenerated-price-hidden-val-id" value="'.$sixNewQuery->canopy_price.'" />
                    <h4>Price <span>$<span id="sixth-price-panel-id">'.$sixNewQuery->canopy_price.'</span></span></h4>';
                    $html['price_canopy'] = $sixNewQuery->canopy_price;
                }
            }
            else if($mQc->final_canopy_type == "no")
            {
                $html['pick_canopy_status'] = "no";
            }

            /// seventh page
            if($mQc->final_lpanel_type == "yes")
            {
                $html['pick_lpanel_status'] = "yes";
                $chooseQuery = PickLouveredPanelModel::where(['admin_action' => 'yes'])->get();
                $html['lpanel_radio_panel'] = "";
                if(count($chooseQuery) > 0)
                {
                    foreach($chooseQuery as $cQuery)
                    {
                        $checking_Checked = PickLouveredPanelModel::where(['admin_action' => 'yes', 'id' => $mQc->final_lpanel ])->get();
                        foreach($checking_Checked as $c_new_price)
                        {
                            $got_new_id = $c_new_price->id;
                        }

                        $checking_var = "";
                        if($cQuery->id == $got_new_id)
                        {
                            $checking_var = "checked";
                        }
                        $html['lpanel_radio_panel'] .= '<li><input type="radio" name="bracket" onclick=my_seveth_click("'.$cQuery->l_panel_price.'") '.$checking_var.'> '.$cQuery->l_panel_name.'</li>';
                    }

                        $checking_Checked_query = PickLouveredPanelModel::where(['admin_action' => 'yes', 'id' => $mQc->final_lpanel])->orderBy('id','asc')->limit(1)->get();
                        foreach($checking_Checked_query as $c_new_price1)
                        {
                            $html['new_price'] = $c_new_price1->l_panel_price;
                        }
                }
            }
            else if($mQc->final_lpanel_type == "no")
            {
                $html['pick_lpanel_status'] = "no";
            }
            

            echo json_encode($html);
        }
    }
}
