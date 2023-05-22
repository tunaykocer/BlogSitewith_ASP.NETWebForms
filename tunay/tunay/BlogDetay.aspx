<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="BlogDetay.aspx.cs" Inherits="tunay.BlogDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     
    <div class="col-lg-8 posts-list">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TunayMeenConnectionString %>" SelectCommand="SELECT * FROM [tblBlog] inner join tblBKategori on tblBKategori.id =tblBlog.KategoriId WHERE (tblBlog.id = @id)"> 
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
       </asp:SqlDataSource>
        <div class="col-lg-8 posts-list">
                        <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource2">
                            <ItemTemplate>

        
               <div class="single-post">
                  <div class="feature-img">
                     <img class="img-fluid" src='images/blog/<%# Eval("Resim") %>' alt="">
                  </div>
                  <div class="blog_details">
                     <h2><%# Eval("Baslik") %>
                     </h2>
                     <ul class="blog-info-link mt-3 mb-4">
                        <li><a href="#"><i class="fa fa-user"></i> <%# Eval("Adi") %></a></li>
                        <li><a href="#"><i class="fa fa-comments"></i> 03 Comments</a></li>
                     </ul>
                     <p class="excert">
                        <%# Eval("Detay") %>
                     </p>
                  </div>
               </div>
                                </ItemTemplate>
                        </asp:DataList>

               <div class="navigation-top">
                  <div class="d-sm-flex justify-content-between text-center">
                     <p class="like-info"><span class="align-middle"><i class="fa fa-heart"></i></span> Tunay ve diğer 2 kişi beğendi</p>
                     <div class="col-sm-4 text-center my-2 my-sm-0">
                        <!-- <p class="comment-count"><span class="align-middle"><i class="fa fa-comment"></i></span> 06 Comments</p> -->
                     </div>
                     <ul class="social-icons">
                        <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fab fa-dribbble"></i></a></li>
                        <li><a href="#"><i class="fab fa-behance"></i></a></li>
                     </ul>
                  </div>
                  <div class="navigation-area">
                     <div class="row">
                        <div
                           class="col-lg-6 col-md-6 col-12 nav-left flex-row d-flex justify-content-start align-items-center">
                           <div class="thumb">
                              <a href="#">
                                 <img class="img-fluid" src="assets/img/post/preview.png" alt="">
                              </a>
                           &nbsp;</div>
                           <div class="arrow">
                              <a href="#">
                                 <span class="lnr text-white ti-arrow-left"></span>
                              </a>
                           </div>
                           <div class="detials">
                              <p>Önceki Gönderi</p>
                              <a href="#">
                                 <h4>Uzay Boşluğu Finali</h4>
                              </a>
                           </div>
                        </div>
                        <div
                           class="col-lg-6 col-md-6 col-12 nav-right flex-row d-flex justify-content-end align-items-center">
                           <div class="detials">
                              <p>Sıradaki Gönderi</p>
                              <a href="#">
                                 <h4>Teleskop</h4>
                              </a>
                           </div>
                           <div class="arrow">
                              <a href="#">
                                 <span class="lnr text-white ti-arrow-right"></span>
                              </a>
                           </div>
                           <div class="thumb">
                              <a href="#">
                                 <img class="img-fluid" src="assets/img/post/next.png" alt="">
                              </a>
                           &nbsp;</div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="blog-author">
                  <div class="media align-items-center">
                     <img src="assets/img/blog/author.png" alt="">
                     <div class="media-body">
                        <a href="#">
                           <h4>Tunay K</h4>
                        </a>
                        <p>Yeni icad edilen aletler sayesinde bazı şeyler daha iyi ve çabuk öğrenilebiliyor.
                            Bunlarda hayatı kolaylaştırıyor.
                        </p>
                     </div>
                  </div>
               </div>
               <div class="comments-area">
                  <h4>03 Yorum</h4>
                  <div class="comment-list">
                     <div class="single-comment justify-content-between d-flex">
                        <div class="user justify-content-between d-flex">
                           <div class="thumb">
                              <img src="assets/img/comment/comment_1.png" alt="">
                           </div>
                           <div class="desc">
                              <p class="comment">
                                 Öylesine yazacak cümle bulamadığım için yazıyorum.proje güzel oldu gibi.
                                 güzel geliştiren bir proje yapıldı.
                              </p>
                              <div class="d-flex justify-content-between">
                                 <div class="d-flex align-items-center">
                                    <h5>
                                       <a href="#">Jr.Tunay</a>
                                    </h5>
                                    <p class="date"> 5 Haziran, 2023 at 5:15 pm </p>
                                 </div>
                                 <div class="reply-btn">
                                    <a href="#" class="btn-reply text-uppercase">yanıtla</a>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="comment-list">
                     <div class="single-comment justify-content-between d-flex">
                        <div class="user justify-content-between d-flex">
                           <div class="thumb">
                              <img src="assets/img/comment/comment_2.png" alt="">
                           </div>
                           <div class="desc">
                              <p class="comment">
                                 Öylesine yazacak cümle bulamadığım için yazıyorum.proje güzel oldu gibi.
                                 güzel geliştiren bir proje yapıldı.Sunumuda yapılcakkk.
                              </p>
                              <div class="d-flex justify-content-between">
                                 <div class="d-flex align-items-center">
                                    <h5>
                                       <a href="#">Jr.Tunay2</a>
                                    </h5>
                                    <p class="date">4 Haziran, 2023 at 3:10 pm </p>
                                 </div>
                                 <div class="reply-btn">
                                    <a href="#" class="btn-reply text-uppercase">yanıtla</a>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="comment-list">
                     <div class="single-comment justify-content-between d-flex">
                        <div class="user justify-content-between d-flex">
                           <div class="thumb">
                              <img src="assets/img/comment/comment_3.png" alt="">
                           </div>
                           <div class="desc">
                              <p class="comment">
                                  Öylesine yazacak cümle bulamadığım için yazıyorum.proje güzel oldu gibi.
                                 güzel geliştiren bir proje yapıldı.
                              </p>
                              <div class="d-flex justify-content-between">
                                 <div class="d-flex align-items-center">
                                    <h5>
                                       <a href="#">Jr.Tunay3</a>
                                    </h5>
                                    <p class="date">1 Haziran, 2023 at 2:24 pm </p>
                                 </div>
                                 <div class="reply-btn">
                                    <a href="#" class="btn-reply text-uppercase">yanıtla</a>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="comment-form">
                  <h4>Yorum Yapın</h4>
                  <form class="form-contact comment_form" action="#" id="commentForm">
                     <div class="row">
                        <div class="col-12">
                           <div class="form-group">
                              <textarea class="form-control w-100" name="comment" id="comment" cols="30" rows="9"
                                 placeholder="Yorum Yazınız"></textarea>
                           </div>
                        </div>
                        <div class="col-sm-6">
                           <div class="form-group">
                              <input class="form-control" name="name" id="name" type="text" placeholder="Ad">
                           </div>
                        </div>
                        <div class="col-sm-6">
                           <div class="form-group">
                              <input class="form-control" name="email" id="email" type="email" placeholder="Email">
                           </div>
                        </div>
                        <div class="col-12">
                           <div class="form-group">
                              <input class="form-control" name="website" id="website" type="text" placeholder="İletişim Adresi">
                           </div>
                        </div>
                     </div>
                     <div class="form-group">
                        <button type="submit" class="button button-contactForm btn_1 boxed-btn">Gönder</button>
                     </div>
                  </form>
               </div>
            </div>
                                
                            
        
               
              
                     <ul class="social-icons">
                        <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fab fa-dribbble"></i></a></li>
                        <li><a href="#"><i class="fab fa-behance"></i></a></li>
                     </ul>
                  </div>
                  <div class="navigation-area">
                     <div class="row">
                        <div
                           class="col-lg-6 col-md-6 col-12 nav-left flex-row d-flex justify-content-start align-items-center">
                           <div class="thumb">
                              <a href="#">
                                 <img class="img-fluid" src="assets/img/post/preview.png" alt="">
                              </a>
                           </div>
                           <div class="arrow">
                              <a href="#">
                                 <span class="lnr text-white ti-arrow-left"></span>
                              </a>
                           </div>
                           
               
                     <ul class="social-icons">
                        <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fab fa-dribbble"></i></a></li>
                        <li><a href="#"><i class="fab fa-behance"></i></a></li>
                     </ul>
                  </div>
                  
           
              
               
              
                                        
                        <nav class="blog-pagination justify-content-center d-flex">
                            <ul class="pagination">
                                <li class="page-item">
                                    <a href="#" class="page-link" aria-label="Previous">
                                        <i class="ti-angle-left"></i>
                                    </a>
                                </li>
                                <li class="page-item">
                                    <a href="#" class="page-link">1</a>
                                </li>
                                <li class="page-item active">
                                    <a href="#" class="page-link">2</a>
                                </li>
                                <li class="page-item">
                                    <a href="#" class="page-link" aria-label="Next">
                                        <i class="ti-angle-right"></i>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="blog_right_sidebar">
                        <aside class="single_sidebar_widget search_widget">
                            <form action="#">
                                <div class="form-group">
                                    <div class="input-group mb-3">
                                        <input type="text" class="form-control" placeholder='Search Keyword'
                                            onfocus="this.placeholder = ''"
                                            onblur="this.placeholder = 'Search Keyword'">
                                        <div class="input-group-append">
                                            <button class="btns" type="button"><i class="ti-search"></i></button>
                                        </div>
                                    </div>
                                </div>
                                <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
                                    type="submit">Search</button>
                            </form>
                        </aside>

                        <aside class="single_sidebar_widget post_category_widget">
                            <h4 class="widget_title">CateCategory</h4>
                            <ul class="list cat-list">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TunayMeenConnectionString %>" SelectCommand="SELECT * FROM [tblBKategori]"></asp:SqlDataSource>
                                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                    <ItemTemplate>
                                        <li>
                                    <a href="#" class="d-flex">
                                        <p>
                                            <%#Eval("Adi") %>
                                        </p>
                                    </a>
                                </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                                
                                
                            </ul>
                        </aside>

                        <aside class="single_sidebar_widget popular_post_widget">
                            <h3 class="widget_title">Son Gönderi</h3>
                            <div class="media post_item">
                                <img src="assets/img/post/post_1.png" alt="post">
                                <div class="media-body">
                                    <a href="single-blog.html">
                                        <h3>Yaşam tarzı hakkında....</h3>
                                    </a>
                                    <p>12 Mayıs, 2023</p>
                                </div>
                            </div>
                            <div class="media post_item">
                                <img src="assets/img/post/post_2.png" alt="post">
                                <div class="media-body">
                                    <a href="single-blog.html">
                                        <h3>Ödül Töreni</h3>
                                    </a>
                                    <p>3 ay önce</p>
                                </div>
                            </div>
                            <div class="media post_item">
                                <img src="assets/img/post/post_3.png" alt="post">
                                <div class="media-body">
                                    <a href="single-blog.html">
                                        <h3>Astronomi Bilimi Araştırması</h3>
                                    </a>
                                    <p>5 gün önce</p>
                                </div>
                            </div>
                            <div class="media post_item">
                                <img src="assets/img/post/post_4.png" alt="post">
                                <div class="media-body">
                                    <a href="single-blog.html">
                                        <h3>Teleskop Lansmanı</h3>
                                    </a>
                                    <p>1 ay önce </p>
                                </div>
                            </div>
                        </aside>
                        <aside class="single_sidebar_widget tag_cloud_widget">
                            <h4 class="widget_title">En Çok Araştırılan Etiketler</h4>
                            <ul class="list">
                                <li>
                                    <a href="#">proje</a>
                                </li>
                                <li>
                                    <a href="#">aşk</a>
                                </li>
                                <li>
                                    <a href="#">teknoloji</a>
                                </li>
                                <li>
                                    <a href="#">seyehat</a>
                                </li>
                                <li>
                                    <a href="#">restaurant</a>
                                </li>
                                <li>
                                    <a href="#">yaşam tarzı</a>
                                </li>
                                <li>
                                    <a href="#">tasarım</a>
                                </li>
                                <li>
                                    <a href="#">spor</a>
                                </li>
                            </ul>
                        </aside>


                        <aside class="single_sidebar_widget instagram_feeds">
                            <h4 class="widget_title">Instagram Fotolar</h4>
                            <ul class="instagram_row flex-wrap">
                                <li>
                                    <a href="#">
                                        <img class="img-fluid" src="assets/img/post/post_5.png" alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img class="img-fluid" src="assets/img/post/post_6.png" alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img class="img-fluid" src="assets/img/post/post_7.png" alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img class="img-fluid" src="assets/img/post/post_8.png" alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img class="img-fluid" src="assets/img/post/post_9.png" alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img class="img-fluid" src="assets/img/post/post_10.png" alt="">
                                    </a>
                                </li>
                            </ul>
                        </aside>


                        <aside class="single_sidebar_widget newsletter_widget">
                            <h4 class="widget_title">Hayran olmak</h4>

                            <form action="#">
                                <div class="form-group">
                                    <input type="email" class="form-control" onfocus="this.placeholder = ''"
                                        onblur="this.placeholder = 'Enter email'" placeholder='Kullanıcı maili gir' required>
                                </div>
                                <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
                                    type="submit">Abone</button>
                            </form>
                        </aside>
                    </div>
                </div>
            </div>
               
</asp:Content>
