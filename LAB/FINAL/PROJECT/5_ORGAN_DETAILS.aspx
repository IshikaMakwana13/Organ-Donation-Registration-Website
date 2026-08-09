<%@ Page Title="Organ Details | Ishika Organ Donation" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="5_ORGAN_DETAILS.aspx.cs" Inherits="_3_ORGAN_DETAILS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="holder1" Runat="Server">
    <div class="organ_details_wrapper">
        
        <div class="organ_details_header">
            <span class="organ_pill">MEDICAL OVERVIEW</span>
            <h1>Organs That Can Be Donated & Transplanted</h1>
            <p>Comprehensive guide to the vital organs, surgical procedures, and recipient requirements</p>
        </div>

        <div class="organ_details_grid">
            
            <!-- Liver Card -->
            <div class="organ_detail_card">
                <div class="card_header_bar liver_bar">
                    <span class="organ_badge_icon">🫁</span>
                    <h2>Liver Transplantation</h2>
                </div>
                <div class="card_body">
                    <p>
                        Liver transplantation is a surgical procedure that replaces a failing or diseased liver with a healthy and well-functioning one. It is the universal treatment for end-stage chronic liver disease (ESLD) or cirrhosis, and is a life-saving operation for patients with acute liver failure.
                    </p>
                    <p>
                        The most commonly used technique is Orthotopic liver transplantation, in which the entire liver is removed and replaced with the donated liver from a deceased or living donor.
                    </p>
                </div>
            </div>

            <!-- Heart Card -->
            <div class="organ_detail_card">
                <div class="card_header_bar heart_bar">
                    <span class="organ_badge_icon">❤️</span>
                    <h2>Heart Transplantation</h2>
                </div>
                <div class="card_body">
                    <p>
                        Although heart transplants are an established treatment for end-stage heart failure, every potential candidate is evaluated by an expert cardiology transplant team. Advances in surgical techniques and immunosuppressive anti-rejection medications have made heart transplants a life-saving success.
                    </p>
                    <p>
                        Donated hearts come from brain-dead donors whose cardiac function is maintained until procurement.
                    </p>
                </div>
            </div>

            <!-- Kidney Card -->
            <div class="organ_detail_card">
                <div class="card_header_bar kidney_bar">
                    <span class="organ_badge_icon">🩺</span>
                    <h2>Kidney Transplantation</h2>
                </div>
                <div class="card_body">
                    <p>
                        Chronic kidney disease (CKD) leads to progressive loss of filtration function. When kidney failure occurs, dialysis or a kidney transplant is essential for survival.
                    </p>
                    <p>
                        A kidney can be donated by a living relative or a deceased donor. The recipient usually retains their original kidneys while the new donated kidney is placed in the lower abdomen.
                    </p>
                </div>
            </div>

            <!-- Lungs Card -->
            <div class="organ_detail_card">
                <div class="card_header_bar lungs_bar">
                    <span class="organ_badge_icon">💨</span>
                    <h2>Lung Transplantation</h2>
                </div>
                <div class="card_body">
                    <p>
                        A lung transplant replaces a person's diseased lungs with healthy lungs from a deceased donor. Used for patients with severe COPD, pulmonary fibrosis, or cystic fibrosis who have exhausted other medical treatments.
                    </p>
                    <p>
                        Depending on clinical severity, a patient may receive a single lung, double lungs, or a combined heart-lung transplant.
                    </p>
                </div>
            </div>

            <!-- Intestine Card -->
            <div class="organ_detail_card">
                <div class="card_header_bar intestine_bar">
                    <span class="organ_badge_icon">🧬</span>
                    <h2>Intestine (Small Bowel)</h2>
                </div>
                <div class="card_body">
                    <p>
                        In cases of acute or chronic intestinal failure or Short Bowel Syndrome, an intestine transplant replaces the diseased section with a healthy donor small intestine.
                    </p>
                    <p>
                        This is among the most delicate transplants, but modern precision immunology has increased successful long-term recipient outcomes.
                    </p>
                </div>
            </div>

            <!-- Pancreas Card -->
            <div class="organ_detail_card">
                <div class="card_header_bar pancreas_bar">
                    <span class="organ_badge_icon">🩸</span>
                    <h2>Pancreas Transplantation</h2>
                </div>
                <div class="card_body">
                    <p>
                        A pancreas transplant restores normal insulin production and glucose control, typically for individuals with severe Type 1 diabetes and secondary complications.
                    </p>
                    <p>
                        It is often performed simultaneously with a kidney transplant (SPK - Simultaneous Pancreas Kidney) to eliminate diabetes and kidney failure at once.
                    </p>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
