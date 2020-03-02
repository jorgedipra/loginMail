<?php
//http://phptoolcase.com/api/0.9.2/query_builder.html

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

    public function _404($id = '', $var = '')
    {
        if ($id == true):
            echo "id [" . $id . "]";
            echo "var [" . $var . "]";
        endif;

    } //::END->_404

} ##->END class landing__Controller
