<?php
//http://phptoolcase.com/api/0.9.2/query_builder.html
use PHPMailer\PHPMailer\PHPMailer;

class Landing__Controller extends Controller
{

    public function home($id = '', $var = '')
    {

        $qb = new PtcQueryBuilder($this->pdo());

        $datos = 'jorgedipra';

        return $view = [
            'datos' => $datos,
        ];
    } ##->END function home

    public function page($id = '', $var = '')
    {

        $qb = new PtcQueryBuilder($this->pdo());
        $user= $
        $datos = 'jorgedipra';

        $this->post('username');
        $this->post('password');
        $this->post('_token');

        
        $mail = new PHPMailer;
        $mail->isSMTP();
        $mail->SMTPDebug = 2;
        $mail->Host = 'smtp.hostinger.co';
        $mail->Port = 587;
        $mail->SMTPAuth = true;
        $mail->Username = 'pruebas@jorgedipra.com';
        $mail->Password = 'zNcmtJAx1234';
        
        $mail->From = "pruebas@jorgedipra.com"; 
        $mail->FromName = "Nama Pengirim";
        $mail->Subject = "pruebas@jorgedipra.com";
        $mail->Body = "pesan"; 
        $mail->AddAddress("pruebas@jorgedipra.com", "nama_penerima");
        $mail->IsHTML(true); 
        $mail->AltBody = "This is the body when user views in plain text format";
        
        if (!$mail->send()) {
            echo 'Mailer Error: ' . $mail->ErrorInfo;
        } else {
            echo 'Message sent!';
        }

        return $view = [
            'datos' => $datos,
        ];
    } ##->END function home

    public function _404($id = '', $var = '')
    {
        if ($id == true):
            echo "id [" . $id . "]";
            echo "var [" . $var . "]";
        endif;

    } //::END->_404

} ##->END class landing__Controller
