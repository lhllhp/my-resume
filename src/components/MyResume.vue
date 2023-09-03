<script>
import html2pdf from 'html2pdf.js';

export default {
  methods: {
    downloadPDF() {
      const element = this.$refs.pdfContent;
      const options = {
        filename: 'page_content.pdf',
        image: { type: 'jpeg', quality: 0.98 },
        html2canvas: { scale: 2 },
        jsPDF: { unit: 'in', format: 'letter', orientation: 'portrait' }
      };

      html2pdf().set(options).from(element).save();
    }
  },
  mounted() {
    this.pdfContent = this.$refs.pdfContent.innerHTML;
  },
}
</script>

<template>
  <div id="doc2" class="yui-t7" ref="pdfContent">
    <div id="inner">

      <div id="hd">
        <div class="yui-gc">
          <div class="yui-u first">
            <h1>Loc Le Huu</h1>
            <h2>Web Developer</h2>
          </div>

          <div class="yui-u">
            <div class="contact-info">
              <h3 @click="downloadPDF">Download PDF</h3>
<!--              <button @click="printDownload">Print Download</button>-->
              <h3><a href="mailto:lhllhp9x@gmail.com">lhllhp9x@gmail.com</a></h3>
              <h3>(+84) 978 842 027</h3>
            </div><!--// .contact-info -->
          </div>
        </div><!--// .yui-gc -->
      </div><!--// hd -->

      <div id="bd">
        <div id="yui-main">
          <div class="yui-b">

            <div class="yui-gf">
              <div class="yui-u first">
                <h2>Profile</h2>
              </div>
              <div class="yui-u">
                <p class="enlarge">
                  Experienced Software Developer adept in bringing forth expertise in design, installation, testing and maintenance of software systems.
                </p>
                <p class="enlarge">
                  Proficient in various platforms, languages, and embedded systems.
                </p>
                <p class="enlarge">
                  Experienced with the latest cutting edge development tools and procedures.
                </p>
                <p class="enlarge">
                  Able to effectively self-manage during independent projects, as well as collaborate as part of a productive team.
                </p>
              </div>
            </div><!--// .yui-gf -->

            <div class="yui-gf">
              <div class="yui-u first">
                <h2>Skills</h2>
              </div>
              <div class="yui-u">
                <div class="talent">
                  <h2>Php</h2>
                </div>
                <div class="talent">
                  <h2>Symfony</h2>
                </div>
                <div class="talent">
                  <h2>Laravel</h2>
                </div>
                <div class="talent">
                  <h2>Nodejs</h2>
                </div>
                <div class="talent">
                  <h2>Nestjs</h2>
                </div>
                <div class="talent">
                  <h2>Python</h2>
                </div>
                <div class="talent">
                  <h2>Sql</h2>
                </div>
                <div class="talent">
                  <h2>MySql</h2>
                </div>
                <div class="talent">
                  <h2>Postgres</h2>
                </div>
                <div class="talent">
                  <h2>Git</h2>
                </div>
                <div class="talent">
                  <h2>HTML & CSS</h2>
                </div>
                <div class="talent">
                  <h2>Javascript</h2>
                </div>
                <div class="talent">
                  <h2>JQuery</h2>
                </div>
              </div>
            </div><!--// .yui-gf -->

            <div class="yui-gf">
              <div class="yui-u first">
                <h2>Experience</h2>
              </div><!--// .yui-u -->

              <div class="yui-u">

                <div class="job">
                  <h2>Navigos Group</h2>
                  <h3>Web developer</h3>
                  <h4>Aug, 2018 - Jun, 2021</h4>
                  <p>
                    VietnamWork Mobile project:
                    <br>
                    &ensp; - Main business: This product brings the job seeker with experience on mobile device. This one also help job seeker find job more conveniently and comfortably
                    <br>
                    &ensp; - Main technology: Symfony 3, SQL,  Nodejs..
                    <br>
                    &ensp; - My responsibility: Build up API for mobile application.
                    <br>
                    <br>
                    Resume search:
                    <br>
                    &ensp; - Main business: This product brings the employer new search resume which is more exactly and quickly
                    <br>
                    &ensp; - Main technology: Symfony 3, SQL,  Nodejs, Algolia, MongoDB,  Redis, RabbitMQ,.
                    <br>
                    &ensp; - My responsibility: Apply Redis caching and search engine (Algolia) to increase performance of project. Developed API that connected the web application with third party services and enabled the exchange of data in real-time
                    <br>
                    &ensp; - mprovement: Make the code more cleaner, apply some Design Pattern to make the project easier to handle.
                    <br>
                    <br>
                    Onboarding:
                    <br>
                    &ensp; - Main business: This product help the employer to manage the new employee status in the first time
                    <br>
                    &ensp; - Main technology: SQL,  Nodejs, Nestjs.
                    <br>
                    &ensp; - My responsibility:  Developed API that managed and reported employee status
                  </p>
                </div>

                <div class="job last">
                  <h2>Nextway Tech</h2>
                  <h3>Web developer</h3>
                  <h4>Oct, 2021 - Aug, 2023</h4>
                  <p>
                    Mobile project:
                    <br>
                    &ensp; - Main business: This product brings the user with experience on mobile device. This one also help user find job more conveniently and comfortably.
                    <br>
                    &ensp; - Main technology: Symfony 3, SQL..
                    <br>
                    &ensp; - My responsibility: Build up API for mobile application.
                    <br>
                    <br>

                    WMS:
                    <br>
                    &ensp; - Main business: This product manages user and bookings on place fast and convenient
                    <br>
                    &ensp; - Main technology: Symfony 3, SQL, Elastic Search
                    <br>
                    &ensp; - My responsibility: Integrate with third party like Google, Customer.io to manage the information
                    <br>
                    &ensp; - Improvement: Make the code more cleaner, apply some Design Pattern to make the project easier to handle.
                    <br>
                    Chatbot:
                    <br>
                    &ensp; - Main business: This product brings the customer can manage and integrate extension to chat with GPT chat bot
                    <br>
                    &ensp; - Main technology:  Nestjs, Postgres, Wordpress
                    <br>
                    &ensp; - My responsibility: Refactored legacy code to improve reliability, scalability and maintainability. Build up API application. Integrate via social login, Stripe payment.
                    <br>
                  </p>
                </div>
              </div><!--// .yui-u -->
            </div><!--// .yui-gf -->


            <div class="yui-gf">
              <div class="yui-u first">
                <h2>Education</h2>
              </div>
              <div class="job yui-u">
                <h2>HCM University of Technology</h2>
                <h3>Electrical & Electronics Engineering</h3>
                <h4>Oct, 2021 - Aug, 2023</h4>
              </div>

              <div class="job yui-u last">
                <h2>Aptech Vietnam</h2>
                <h3>Advanced Diploma in Software Engineering</h3>
                <h4>Aug, 2017 - Aug, 2020</h4>
              </div>
            </div><!--// .yui-gf -->

            <div class="yui-gf">
              <div class="yui-u first">
                <h2>Honors & Awards</h2>
              </div>
              <div class="job yui-u last">
                <h2>Service hero in Navigosgroup</h2>
                <h3>This prize recognizes to dream maker who has good supporting spirit to another department.</h3>
                <h4>Oct, 2019</h4>
              </div>
            </div><!--// .yui-gf -->

            <div class="yui-gf last">
              <div class="yui-u first">
                <h2>References</h2>
              </div>
              <div class="job yui-u">
                <h2>Vo Van Thuan - Nextway Tech - CTO</h2>
                <h3>vanthuankhtn@gmail.com &mdash; 0908267307 </h3>
              </div>
              <div class="job yui-u last">
                <h2>Bui Duy Khiem - Aptech Vietnam</h2>
                <h3>khiem132@hotmail.com &mdash; 0978416578 </h3>
              </div>
            </div><!--// .yui-gf -->

          </div><!--// .yui-b -->
        </div><!--// yui-main -->
      </div><!--// bd -->

      <div id="ft">
        <p>Loc Le Huu &mdash; <a href="mailto:lhllhp9x@gmail.com">lhllhp9x@gmail.com</a> &mdash; (+84) 978 842 027</p>
      </div><!--// footer -->

    </div><!-- // inner -->
  </div><!--// doc -->
</template>
