<div class="container-xxl py-5 px-0 wow fadeInUp" data-wow-delay="0.1s">
    <div class="row g-0">
        <div class="col-md-6">
            <!--<div class="video">
                <button type="button" class="btn-play" data-bs-toggle="modal"
                    data-src="https://www.youtube.com/embed/DWRcNpR6Kdc" data-bs-target="#videoModal">
                    <span></span>
                </button>
            </div>-->
            <div class="image">
                <img src="../views/img/quanlau.jpg" alt="Ảnh Quan Lau" class="img-fluid">
            </div>

        </div>
        <div class="col-md-6 bg-dark d-flex align-items-center">
            <div class="p-5 wow fadeInUp" data-wow-delay="0.2s">
                <h5 class="section-title ff-secondary text-start text-primary fw-normal">
                    Đặt bàn
                </h5>
                <h1 class="text-white mb-4">Thông tin</h1>
                <form id="bookingForm">
                    <div class="row g-3">
                        <div class="col-md-6">
                            <div class="form-floating">
                                <input type="text" class="form-control" id="name" placeholder="Your Name" />
                                <label for="name">Họ và tên</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-floating">
                                <input type="email" class="form-control" id="email" placeholder="Your Email" />
                                <label for="email">Email</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-floating date" id="date3" data-target-input="nearest">
                                <input type="text" class="form-control datetimepicker-input" id="datetime"
                                    placeholder="Date & Time" data-target="#date3" data-toggle="datetimepicker" />
                                <label for="datetime">Ngày và giờ</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-floating">
                                <input type="number" class="form-control" id="number" placeholder="Số người" />
                                <label for="number">Số người</label>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-floating">
                                <textarea class="form-control" placeholder="Special Request" id="message"
                                    style="height: 100px"></textarea>
                                <label for="message">Yêu cầu đặc biệt</label>
                            </div>
                        </div>
                        <div class="col-12">
                            <button class="btn btn-primary w-100 py-3" type="submit">
                                Đặt ngay
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!--<div class="modal fade" id="videoModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content rounded-0">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Youtube Video</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">-->
                <!-- 16:9 aspect ratio -->
                <!--<div class="ratio ratio-16x9">
                    <iframe class="embed-responsive-item" src="" id="video" allowfullscreen allowscriptaccess="always"
                        allow="autoplay"></iframe>
                </div>
            </div>
        </div>
    </div>
</div>-->
<script src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js"></script>
<script>
    emailjs.init("QiQCxZi935Qv7oKxs"); // Thay YOUR_EMAILJS_USER_ID bằng ID từ EmailJS

    document.getElementById('bookingForm').addEventListener('submit', function(event) {
        event.preventDefault();

        const name = document.getElementById('name').value.trim();
        const email = document.getElementById('email').value.trim();
        const datetime = document.getElementById('datetime').value.trim();
        const guests = document.getElementById('number').value.trim();
        const message = document.getElementById('message').value.trim();

        // Kiểm tra nếu bất kỳ trường nào trừ yêu cầu đặc biệt không được nhập
        if (!name || !email || !datetime || !guests) {
            alert('Vui lòng nhập đầy đủ thông tin cần thiết');
            return;
        }

        // Gửi email thông qua EmailJS
        emailjs.send("service_phpbtl","template_oue5m8u", {
            name: name,
            email: email,
            datetime: datetime,
            guests: guests,
            message: message
        }).then(function(response) {
            alert('Đặt bàn thành công! Chúng tôi sẽ liên hệ lại với bạn sớm nhất.');
        }, function(error) {
            alert('Có lỗi xảy ra khi gửi thông tin. Vui lòng thử lại.');
        });
    });
</script>
