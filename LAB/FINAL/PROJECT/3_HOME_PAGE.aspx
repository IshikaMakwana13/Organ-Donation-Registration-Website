<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="3_HOME_PAGE.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="holder1" Runat="Server">
    <div style="text-align: center; margin: 15px auto; width: 100%; display: flex; justify-content: center; align-items: center; gap: 8px; flex-wrap: nowrap; white-space: nowrap;">
        <asp:Label runat="server" style="font-family: Britannic, 'Arial Rounded MT', sans-serif; font-size: 26px; font-weight: bold; color: #1e293b; display: inline-block;">WELCOME :</asp:Label>
        <asp:Label runat="server" ID="user_home" Text="user" style="font-family: Britannic, 'Arial Rounded MT', sans-serif; font-size: 26px; font-weight: bold; color: #ab9219; text-transform: uppercase; text-decoration: underline; display: inline-block;"></asp:Label>
    </div>

    <!-- MAIN SLIDER START -->
    <div id="slider" style="margin-top:10px">
        <figure style="height:420px">
            <img id="adv" src="Pictures/1_HomePage/1_AdvSlider/27_Nov.png" />
            <img id="adv3" src="Pictures/1_HomePage/1_AdvSlider/IND.png" />
            <img id="adv4" src="Pictures/1_HomePage/1_AdvSlider/families.png" />
            <img id="adv5" src="Pictures/1_HomePage/1_AdvSlider/waiting.png" />
            <img id="adv6" src="Pictures/1_HomePage/1_AdvSlider/card_.png" />


        </figure>
    </div>
    <!-- MAIN SLIDER END-->




    <!-- APPLY BUTTON DONOR START-->
    <div >


        <div class="donor_btn">
            <div class="container">


                <table id="tbl_btn">

                    <tr >
                        <td>
                            <strong><center>REGISTRATION FOR DONOR</center></strong>
                            <a href="6_DONOR.aspx" class="button">

                                <div class="plate"></div>
                                <div class="plate"></div>
                                <div class="plate"></div>
                                <div class="plate"></div>
                                <div class="plate"></div>
                                <div class="button__wrapper">
                                    <span class="button__text">APPLY</span>
                                </div>
                                <div class="button__box">
                                    <div class="inner inner__top"></div>
                                    <div class="inner inner__front"></div>
                                    <div class="inner inner__bottom"></div>
                                    <div class="inner inner__back"></div>
                                    <div class="inner inner__left"></div>
                                    <div class="inner inner__right"></div>
                                </div>
                            </a>
                        </td>

                        <td>
                            <strong><center>REGISTRATION FOR PATIENT</center></strong>
                            <a href="7_PATIENT.aspx" class="button">

                                <div class="plate"></div>
                                <div class="plate"></div>
                                <div class="plate"></div>
                                <div class="plate"></div>
                                <div class="plate"></div>
                                <div class="button__wrapper">
                                    <span class="button__text">APPLY</span>
                                </div>
                                <div class="button__box">
                                    <div class="inner inner__top"></div>
                                    <div class="inner inner__front"></div>
                                    <div class="inner inner__bottom"></div>
                                    <div class="inner inner__back"></div>
                                    <div class="inner inner__left"></div>
                                    <div class="inner inner__right"></div>
                                </div>
                            </a>
                        </td>
                    </tr>

                </table>
            </div>

        </div>
        <h1 style="box-shadow: 30px 10px 150px #f97f01;margin-top:3%"><b><center>BY PLEDGING YOUR ORGANS YOU CAN SAVE UPTO 8 LIVES </center></b></h1>

    </div>
    <!--  APPLY BUTTON DONOR END-->

    <hr />


    <hr />





    <!-- COUNTER START -->
    <div class="scroll_counter">
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <div class="container-fluid text-center">
            <h1>THE TOTAL DONATION IN WORLD</h1>
            <div class="row">
                <div class="col-sm-3">
                    <i class="fa fa-ambulance"></i>
                    <h2 data-max="74345">k+ KIDNEYS</h2>
                </div>
                <div class="col-sm-3">
                    <i class="fa fa-stethoscope"></i>
                    <h2 data-max="23790">k+ LIVER</h2>
                </div>
                <div class="col-sm-3">
                    <i class="fa fa-heartbeat"></i>
                    <h2 data-max="14671">k+ HEART</h2>
                </div>
                <div class="col-sm-3">
                    <i class="fa fa-medkit"></i>
                    <h2 data-max="11500" id="test">k+ LUNGS</h2>
                </div>
            </div>
        </div>

        <script type="text/javascript">
            /* <![CDATA[ */
            function inVisible(element) {
            var WindowTop = $(window).scrollTop();
            var WindowBottom = WindowTop + $(window).height();
            var ElementTop = element.offset().top;
            var ElementBottom = ElementTop + element.height();
            if ((ElementBottom <= WindowBottom) && ElementTop >= WindowTop)
            animate(element);
            }

            function animate(element) {
            if (!element.hasClass('ms-animated')) {
            var maxval = element.data('max');
            var html = element.html();
            element.addClass("ms-animated");
            $({
            countNum: element.html()
            }).animate({
            countNum: maxval
            }, {
            duration: 5000,
            easing: 'linear',
            step: function () {
            element.html(Math.floor(this.countNum) + html);
            },
            complete: function () {
            element.html(this.countNum + html);
            }
            });
            }
            }

            $(function () {
            $(window).scroll(function () {
            $("h2[data-max]").each(function () {
            inVisible($(this));
            });
            })
            });
            /* ]]> */
        </script>
    </div>

    <!-- COUNTER END -->





    <!-- Q&A START-->
    <div class="intro">

        <div class="main_qa" style="margin-top:50px;cursor:col-resize;cursor:grabbing">
            <h3><strong><center>SOME COMMON QUESTION </center></strong></h3>

            <div class="slider-container">
                <div class="slider">
                    <div class="slides">

                        <div id="slides_1" class="slide"><table style="border-spacing:40px">
                                <tr>
                                    <td>
                                        <h2>What is Organ Donation?</h2>
                                    </td>
                                </tr>
                                <tr>
                                    <td><h4> Organ donation is the entire practice of retrieving a human organ from a living or deceased person, who is referred to as a Donor, and transplanting it into a recipient.
                                        </h4></td>
                                </tr>
                            </table>

                            <a class="slide__prev" href="#slides__5" title="Prev"></a>
                            <a class="slide__next" href="#slides__2" title="Prev"></a>
                        </div>



                        <div id="slides__2" class="slide">
                            <table style="border-spacing:40px">
                                <tr>
                                    <td>
                                        <h2>Who can be a donor?</h2>
                                    </td>
                                </tr>
                                <tr>
                                    <td><h4>People of all different ages are able to donate. It is essential that anyone who wants to be a donor expresses this wish to others in the family.</h4></td>
                                </tr>
                            </table>

                            <div>
                                <p>

                                </p></div>
                            <a class="slide__prev" href="#slides__1" title="Next"></a>
                            <a class="slide__next" href="#slides__3" title="Next"></a>
                        </div>

                        <div id="slides__3" class="slide">
                            <table style="border-spacing:40px">
                                <tr>
                                    <td>
                                        <h2>What can be donated?</h2>
                                    </td>
                                </tr>
                                <tr>
                                    <td><h4> <ul>
                                                <ol>ORGANS : <ol>AFTER DEATH = Kidneys, Liver, Lungs ,Heart ,Pancreas ,Intestines ,Hands and Face</ol>
                                                    <ol>ALIVE =One kidney, One lung, A part of the liver, A part of the pancreas, A part of the intestine</ol> </ol>
                                                <ol>Tissue : Corneas, The middle ear, Skin, Heart valves, Bone, Veins, Cartilage, Tendons, Ligament</ol>
                                                <ol> Hands & Face  </ol>
                                                <ol> Blood </ol>
                                                <ol> Bones </ol>
                                                <ol>Skin & Veins </ol>
                                            </ul>
                                        </h4></td>
                                </tr>
                            </table>

                            <a class="slide__prev" href="#slides__2" title="Prev"></a>
                            <a class="slide__next" href="#slides__4" title="Next"></a>
                        </div>


                        <div id="slides__4" class="slide">
                            <table style="border-spacing:40px">
                                <tr>
                                    <td>
                                        <h2>How does the deceased donation process work?</h2>
                                    </td>
                                </tr>
                                <tr>
                                    <td><h4>When a human dies, the donated organs are matched with individuals on an organ waiting list. Matching is based on a variety of factors including blood and tissue types, medical need, length of time on the waiting list and weight of donor and recipient.</h4></td>
                                </tr>
                            </table>
                            <span class="slide__text"></span>  <p></p>
                            <a class="slide__prev" href="#slides__3" title="Prev"></a>
                            <a class="slide__next" href="#slides__5" title="Next"></a>
                        </div>



                        <div id="slides__5" class="slide"><table style="border-spacing:40px">
                                <tr>
                                    <td>
                                        <h2>Do I have to register as an organ and tissue donor with any hospital or national registry?</h2>
                                    </td>
                                </tr>
                                <tr>
                                    <td><h4> <ul>There are different ways to identify yourself as an organ donor:
                                                <li>  For deceased donation: if an online registry is available in your state, you can sign up for that. (You can also designate your wishes on your driver's license or sign a donor card, but the online registry is the best method to use). It is extremely important to discuss your decision with your loved ones, because they will be asked to sign a consent form at the time of the donation.</li>

                                                <li>For living donation: you need to work with the recipient's hospital to be tested as a donor. If you are considering donation to anyone who needs it, and don't have a recipient in mind, you need to work with a hospital in your area.</li>
                                            </ul>
                                        </h4></td>
                                </tr>
                            </table>

                            <a class="slide__prev" href="#slides__4" title="Prev"></a>
                            <a class="slide__next" href="#slides__1" title="Prev"></a>
                        </div>





                    </div>
                </div>
            </div>
            <!-- Q&A END-->










            <hr />






            <!-- SCROLL STORIES PATIENTS START-->
            <hr />
            <div id="main_scroll" style="width:100%; margin-top:20px;">
                <center><h1 style="color:cornsilk"><strong>  REAL HEROS  </strong></h1></center>
                <div id="scroll_stories" style="width: 800px; max-width: 95%; margin: 20px auto;">

                    <article>
                        <figure>
                            <img src="Pictures/1_HomePage/2_Background_Stories_Slider/1.jpg" style="height:260px;width:100%" alt="" />
                            <center><h3>Kamala Khandelwal </h3></center>

                        </figure>
                        <section>
                            <div>
                                <p><b>Aaradhya Devi</b> had significant heart failure, where the heart is having trouble pumping enough blood around the body. She lived 11 years after transplanting heart.</p>
                            </div>
                        </section>

                        <figure>
                            <img src="Pictures/1_HomePage/2_Background_Stories_Slider/AD.jpg" style="height:270px;width:100%" alt />
                            <center><h3>Pushpa Gates </h3></center>
                        </figure>
                        <section>
                            <div>

                                <p><b>Naitee Das</b> had liver failure.Cirrhosis refers to scarring of the liver. Scar tissue forms because of injury or long-term disease. It replaces healthy tissue.Scar tissue cannot do what healthy liver tissue doesÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“make protein, help fight infections, clean the blood, help digest food, and store energy for when you need it. Scar tissue also blocks the normal flow of blood through the liver.</p>
                            </div>
                        </section>

                        <figure>
                            <img src="Pictures/1_HomePage/2_Background_Stories_Slider/GS.jpg" style="height:270px;width:100%" alt />
                            <center><h3>Radheswari Tapadia </h3></center>
                        </figure>
                        <section>
                            <div>

                                <p><b>Gulika Singh</b> had heart problem. Unlike heart disease due to heart attacks, where there is a problem with adequate blood flow to the heart, cardiomyopathy is a disease of the heart muscle itself. So she needed heart transplant</p>
                            </div>
                        </section>

                        <figure>
                            <img src="Pictures/1_HomePage/2_Background_Stories_Slider/GSNExt.jpg" style="height:270px;width:100%" alt />
                            <center><h3>Guneet Kaur</h3></center>
                        </figure>
                        <section>
                            <div>

                                <p><b>Taara Kumar </b> had lung disease. Chronic obstructive pulmonary disease (COPD) is a slowly progressive disease of the airways that is characterized by a gradual loss of lung function. The term COPD is used to describe two related lung diseases: chronic bronchitis and emphysema. Chronic bronchitis is inflammation and eventual scarring of the bronchi (airway tubes). Emphysema is enlargement and destruction of the alveoli (air sacs) within the lungs. Many persons with COPD have both of these conditions</p>
                            </div>
                        </section>

                        <figure>
                            <img src="Pictures/1_HomePage/2_Background_Stories_Slider/ND.jpg" style="height:270px;width:100%" alt />
                            <center><h3>Alex Bush </h3></center>
                        </figure>
                        <section>
                            <div>

                                <p><b>Tejshri Lal</b> had small intestine issue. Short gut syndrome, also known as short bowel syndrome, is condition of nutritional malabsorption related to the surgical removal or disease of a large portion of the small intestine.</p>
                            </div>
                        </section>

                        <figure>
                            <img src="Pictures/1_HomePage/2_Background_Stories_Slider/OIG.gOA_KDStdcbSa9.jpg" style="height:270px;width:100%" alt />
                            <center><h3>Pushpa Baroot </h3></center>
                        </figure>
                        <section>
                            <div>

                                <p><b>Amolika Bibi</b> had kidney failure. Polycystic kidney disease (PKD) is an inherited kidney disorder that enlarges the kidneys and interferes with kidney function due to multiple cysts on the kidneys.</p>
                            </div>
                        </section>




                        <figure>
                            <img src="Pictures/1_HomePage/2_Background_Stories_Slider/s.jpg" style="height:270px;width:100%"/>
                            <center><h3>Saloni Ahuja </h3></center>

                        </figure>
                        <section>
                            <div>

                                <p><b>Bhaskari Roy</b> has lack of tissue. Disposable tissue products help reduce the spread of bacteria and communicable diseases and are hygienic and convenient to boot.</p>
                            </div>
                        </section>


                    </article>
                </div>
                <!-- SCROLL STORIES PATIENTS END-->








                <!-- ORGAN SLIDESHOW START -->
                <br />
                <hr />
                <br />
                <center><strong> <h1 style="font-family:Consolas"> ORGANS THAT CAN BE TRANSPLANTED </h1></strong></center>
                <div class="main_organ" style="margin-bottom:5%;">

                    <table style="">
                        <tr>
                            <td>
                                <div class="container22">
                                    <img src="Pictures/1_HomePage/3_Organs/heart.jpg" alt="Avatar" />
                                    <div class="overlay1">
                                        <div class="text_ss">HEART</div>
                                    </div>
                                </div>
                            </td>

                            <td>
                                <div class="container22">
                                    <img src="Pictures/1_HomePage/3_Organs/lungs.jpg" alt="Avatar" />
                                    <div class="overlay1">
                                        <div class="text_ss">LUNGS</div>
                                    </div>
                                </div>
                            </td>

                            <td>
                                <div class="container22">
                                    <img src="Pictures/1_HomePage/3_Organs/liver.jpg" alt="Avatar" />
                                    <div class="overlay1">
                                        <div class="text_ss">LIVER</div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="container22">
                                    <img src="Pictures/1_HomePage/3_Organs/kidney.jpg" alt="Avatar" />
                                    <div class="overlay1">
                                        <div class="text_ss">KIDNEYS</div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="container22">
                                    <img src="Pictures/1_HomePage/3_Organs/intestine.jpg" alt="Avatar" />
                                    <div class="overlay1">
                                        <div class="text_ss">INTESTINE</div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="container22">
                                    <img src="Pictures/1_HomePage/3_Organs/pancrese.jpg" alt="Avatar" />
                                    <div class="overlay1">
                                        <div class="text_ss">PANCREAS</div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="container22">
                                    <img src="Pictures/1_HomePage/3_Organs/hands.jpg" alt="Avatar" />
                                    <div class="overlay1">
                                        <div class="text_ss">HANDS</div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="container22">
                                    <img src="Pictures/1_HomePage/3_Organs/face.jpg" alt="Avatar" />
                                    <div class="overlay1">
                                        <div class="text_ss">FACE</div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="container22">
                                    <img src="Pictures/1_HomePage/3_Organs/blood.jpg" alt="Avatar" />
                                    <div class="overlay1">
                                        <div class="text_ss">BLOOD & PLATELETS</div>
                                    </div>
                                </div>
                            </td>
                        </tr>


                        <tr>
                            <td>
                                <div class="container22">
                                    <img src="Pictures/1_HomePage/3_Organs/cornea.jpg" alt="Avatar" />
                                    <div class="overlay1">
                                        <div class="text_ss">CORNEA</div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="container22">
                                    <img src="Pictures/1_HomePage/3_Organs/ear.jpg" alt="Avatar" />
                                    <div class="overlay1">
                                        <div class="text_ss">MIDDLE EAR</div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="container22">
                                    <img src="Pictures/1_HomePage/3_Organs/vavless.png" alt="Avatar" />
                                    <div class="overlay1">
                                        <div class="text_ss">HEART VALVES</div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="container22">
                                    <img src="Pictures/1_HomePage/3_Organs/skin.jpg" alt="Avatar" />
                                    <div class="overlay1">
                                        <div class="text_ss">SKIN</div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="container22">
                                    <img src="Pictures/1_HomePage/3_Organs/bones.jpg" alt="Avatar" />
                                    <div class="overlay1">
                                        <div class="text_ss">BONES</div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="container22">
                                    <img src="Pictures/1_HomePage/3_Organs/tendons.jpg" alt="Avatar" />
                                    <div class="overlay1">
                                        <div class="text_ss">TENDONDS</div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="container22">
                                    <img src="Pictures/1_HomePage/3_Organs/veins.jpg" alt="Avatar" />
                                    <div class="overlay1">
                                        <div class="text_ss">VEINS</div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="container22">
                                    <img src="Pictures/1_HomePage/3_Organs/ligamnets.jpg" alt="Avatar" />
                                    <div class="overlay1">
                                        <div class="text_ss">LIGAMENTS</div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="container22">
                                    <img src="Pictures/1_HomePage/3_Organs/cartilage.jpg" alt="Avatar" />
                                    <div class="overlay1">
                                        <div class="text_ss">CARTILAGE</div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>

                <br />
                <hr />
                <!-- ORGAN SLIDESHOW END -->




                <!-- DOCTOR SLIDESHOW START -->
                <div class="doctor_ss" style="margin-top:150px">
                    <center><h1 style="font-family:Broadway">OUR SUPPORTED DOCTORS TEAM </h1></center>

                    <div class="container33">


                        <div class="card">
                            <h3 class="title">Dr.ABHINAV SUKLA</h3>
                            <div class="bar">
                                <img src="Pictures/1_HomePage/4_Doctors/Screenshot 2024-01-01 221624.png" />
                                <h4>Cardiologist</h4>
                                <div class="filledbar"></div>
                            </div>
                        </div>


                        <div class="card">
                            <h3 class="title">Dr.ARJUN SINGH</h3>
                            <div class="bar">
                                <img src="Pictures/1_HomePage/4_Doctors/Screenshot 2024-01-01 221716.png" />
                                <h4>Pulmonologist</h4>
                                <div class="filledbar"></div>
                            </div>
                        </div>


                        <div class="card">
                            <h3 class="title">Dr.RITESH DESHMUKH</h3>
                            <div class="bar">
                                <img src="Pictures/1_HomePage/4_Doctors/Screenshot 2024-01-01 221730.png" />
                                <h4>Hepatologist</h4>
                                <div class="filledbar"></div>
                            </div>
                        </div>


                        <div class="card">
                            <h3 class="title">Dr.HITAKSHI MAKWANA</h3>
                            <div class="bar">
                                <img src="Pictures/1_HomePage/4_Doctors/Screenshot 2024-01-01 221746.png" />
                                <h4>Ophthalmologist</h4>
                                <div class="filledbar"></div>
                            </div>
                        </div>
                        <div class="card">
                            <h3 class="title">Dr.RADHIKA MAKWANA</h3>
                            <div class="bar">
                                <img src="Pictures/1_HomePage/4_Doctors/d2.jpg" />
                                <h4>Phlebologist</h4>
                                <div class="filledbar"></div>
                            </div>
                        </div>
                        <div class="card">
                            <h3 class="title">Dr.PRAKASH PITRODA</h3>
                            <div class="bar">
                                <img src="Pictures/1_HomePage/4_Doctors/doc.png" />
                                <h4>Dermatologist</h4>
                                <div class="filledbar"></div>
                            </div>
                        </div>

                    </div>
                </div>
                <hr />
                <!-- DOCTOR SLIDESHOW END -->



                <!-- AWARD & ACHIEVEMENTS START -->
<div class="chine_slider" style="margin-top: 40px; width: 100%; padding-bottom: 40px;">
    <div style="text-align: center; margin-bottom: 20px;">
        <h1 style="font-family: Broadway, sans-serif; font-size: 32px; color: #1e293b; letter-spacing: 1px;">AWARDS & ACHIEVEMENTS</h1>
    </div>

    <input type="radio" id="s-1" name="slider-control" checked="checked" />
    <input type="radio" id="s-2" name="slider-control" />
    <input type="radio" id="s-3" name="slider-control" />

    <div class="js-slider" style="background-color: #000000; border-radius: 12px; box-shadow: 0 10px 30px rgba(0,0,0,0.7);">
        <!-- Slide 1 -->
        <figure class="js-slider_item img-1" style="background-color: #000000; color: beige;">
            <div class="js-slider_img">
                <img src="Pictures/1_HomePage/5_Awards_Achievements/A1.jpg" alt="Letter of Appreciation" />
            </div>
            <figcaption class="wo-caption">
                <h3>LETTER OF APPRECIATION</h3>
                <p>
                    Ishika Organization was felicitated by NOTTO on 9th Indian Organ Donation Day held on 27th November 2020 at The Ashok Hotel, New Delhi. The Hon'ble Ministers of State, Ministry of Health and Family Welfare, Shri. Ashwini Kumar Choubey and Smt. Anupriya Patel presented the award to the foundation.
                </p>
            </figcaption>
        </figure>

        <!-- Slide 2 -->
        <figure class="js-slider_item img-2" style="background-color: #000000; color: beige;">
            <div class="js-slider_img">
                <img src="Pictures/1_HomePage/5_Awards_Achievements/doc_aws3.jpg" alt="Gujarat Garima Award" />
            </div>
            <figcaption class="wo-caption">
                <h3>Gujarat Garima Award - Highest Civilian Award Of Gujarat</h3>
                <p>
                    Ishika Organization was selected as one of the three best NGOs in India working for organ donation in 2021. Our CEO, Sunayana Singh, received the award from the Honourable Minister of State for Health and Family Welfare, Shrimati Anupriya Patel, Hon'ble Health Minister of Tamil Nadu Dr. C. Vijaya baskar, Dr. (Prof). Jagadish Prasad, DGHS, MoHFW, Dr. Vimal Bhandari, Director, NOTTO on the 8th Indian Organ Donation Day on November 27, 2017.
                </p>
            </figcaption>
        </figure>

        <!-- Slide 3 -->
        <figure class="js-slider_item img-3" style="background-color: #000000; color: beige;">
            <div class="js-slider_img">
                <img src="Pictures/1_HomePage/5_Awards_Achievements/doc_awd2.jpg" alt="Ujas Award" />
            </div>
            <figcaption class="wo-caption">
                <h3>Ujas Award</h3>
                <p>
                    Ishika Organization was felicitated by the Health Minister, Mr. J.P. Nadda, on India's Organ Donation Day on November 30, 2016 for its exemplary role in promoting awareness on organ donation.
                </p>
            </figcaption>
        </figure>

        <!-- Slider Navigation Arrows -->
        <div class="js-slider_nav">
            <label class="js-slider_nav_item s-nav-1 prev" for="s-3"></label>
            <label class="js-slider_nav_item s-nav-1 next" for="s-2"></label>
            <label class="js-slider_nav_item s-nav-2 prev" for="s-1"></label>
            <label class="js-slider_nav_item s-nav-2 next" for="s-3"></label>
            <label class="js-slider_nav_item s-nav-3 prev" for="s-2"></label>
            <label class="js-slider_nav_item s-nav-3 next" for="s-1"></label>
        </div>

        <!-- Slider Indicators (Dots) -->
        <div class="js-slider_indicator">
            <div class="js-slider-indi indi-1"></div>
            <div class="js-slider-indi indi-2"></div>
            <div class="js-slider-indi indi-3"></div>
        </div>
    </div>
</div>
</asp:Content>


