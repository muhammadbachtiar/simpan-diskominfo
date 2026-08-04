<!-- SKM Modal Component -->
<style>
    .form-container_survey {
        background-color: #fff;
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 500px;
    }
    .form-group_survey {
        margin-bottom: 15px;
    }

    .modal_survey {
        display: none;
        position: fixed;
        z-index: 99999;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
        background-color: rgba(0, 0, 0, 0.6);
        backdrop-filter: blur(4px);
    }
    .modal-content_survey {
        height: 85vh;
        background-color: #fefefe;
        margin: 3% auto;
        padding: 25px;
        border: 1px solid #888;
        width: 90%;
        max-width: 950px;
        text-align: center;
        border-radius: 12px;
        box-shadow: 0 8px 30px rgba(0, 0, 0, 0.3);
        position: relative;
        display: flex;
        flex-direction: column;
    }
    .modal-content_survey.success {
        border-left: 5px solid #28a745;
    }
    .modal-content_survey.error {
        border-left: 5px solid #dc3545;
    }
    .close-btn_survey {
        color: #aaa;
        position: absolute;
        right: 20px;
        top: 15px;
        font-size: 32px;
        font-weight: bold;
        line-height: 1;
        cursor: pointer;
        transition: color 0.2s ease;
    }
    .close-btn_survey:hover,
    .close-btn_survey:focus {
        color: #000;
        text-decoration: none;
    }

    .modal-content_survey .iframe-active_survey #modalMessage {
        display: none;
    }

    .btn_skm_action:hover {
        transform: translateY(-2px);
        box-shadow: 0 6px 20px rgba(0, 0, 0, 0.2) !important;
        background-color: #f8f9fa !important;
    }
</style>

<!-- Section Trigger SKM di Halaman Utama -->
<section class="tf__skm mt_95">
    <div class="container">
        <div class="row wow fadeInUp" data-wow-duration="1.5s">
            <div class="m-auto col-xl-8 col-lg-8 col-md-10">
                <div class="tf__heading_area mb_30 text-center">
                    <h5>Survei Kepuasan</h5>
                    <h2>Survei Kepuasan Masyarakat (SKM)</h2>
                    <p class="mt_15" style="color: #666;">Partisipasi Anda sangat berharga untuk meningkatkan kualitas pelayanan publik kami.</p>
                </div>
            </div>
        </div>
        <div class="row wow fadeInUp" data-wow-duration="1.5s">
            <div class="col-12 text-center">
                <div class="skm_card_box p-4 p-md-5" style="background: linear-gradient(135deg, #007BFF 0%, #0056b3 100%); border-radius: 16px; color: #fff; box-shadow: 0 10px 30px rgba(0,123,255,0.25);">
                    <h3 class="text-white mb-3" style="font-weight: 600; font-size: 24px;">Berikan Penilaian Pelayanan Kami</h3>
                    <p class="text-white-50 mb-4" style="font-size: 15px;">Klik tombol di bawah ini untuk mengisi formulir survei secara interaktif.</p>
                    <button type="button" class="btn_skm_action" onclick="return mulai_survey()" style="padding: 14px 36px; font-size: 16px; font-weight: 600; cursor: pointer; border-radius: 50px; background-color: #ffffff; color: #007BFF; border: none; box-shadow: 0 4px 15px rgba(0,0,0,0.15); transition: all 0.3s ease;">
                        <i class="far fa-edit me-2"></i> Mulai Survei SKM
                    </button>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Modal Popup untuk Survey -->
<div id="statusModal" class="modal_survey">
    <div class="modal-content_survey">
        <span class="close-btn_survey">&times;</span>
        <h3 id="modalTitle" style="font-size: 20px; font-weight: 700; margin-bottom: 15px; color: #333;">Berikan Penilaian Terbaik Anda...</h3>
        
        <p id="modalMessage"></p> 
        
        <iframe id="resultIframe" style="width: 100%; height: 100%; flex-grow: 1; border: none; border-radius: 8px; display: none;"></iframe>
    </div>
</div>

<script>
    function mulai_survey() {
        const modal = document.getElementById('statusModal');
        const modalContent = modal.querySelector('.modal-content_survey');
        const modalTitle = document.getElementById('modalTitle');
        const resultIframe = document.getElementById('resultIframe');
        const respondentNameInput = document.getElementById('respondent_name');
        const modalMessage = document.getElementById('modalMessage');

        resultIframe.style.display = 'none';
        modalContent.className = 'modal-content_survey';
        modal.style.display = "block";

        modalTitle.textContent = "Berikan Penilaian Terbaik Anda...";
        
        resultIframe.src = "https://surveidigital.spbe.go.id/embed/survey/eyJzdXJ2ZXlfaWQiOjIsInNlcnZpY2VfaWQiOjk0NiwiaG9zdCI6Imh0dHBzOi8vc2ltcGFuLm11YXJhZW5pbWthYi5nby5pZC8iLCJrZXkiOiJLQlJmUFhhaiJ9/embed/view/?jenis_layanan=Simpan Diskominfo";
        resultIframe.style.display = 'block';
        if (respondentNameInput) respondentNameInput.value = '';
        
        if (modalMessage) modalMessage.style.display = 'none';
        modalContent.className = 'modal-content_survey success_survey iframe-active_survey';
        modal.style.display = "block";
        return false;
    }

    document.addEventListener("DOMContentLoaded", function () {
        const modal = document.getElementById('statusModal');
        if (modal) {
            const closeBtn = modal.querySelector('.close-btn_survey');

            if (closeBtn) {
                closeBtn.onclick = function() {
                    modal.style.display = "none";
                }
            }
            
            window.onclick = function(event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        }
    });
</script>
