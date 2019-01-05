<?php


class HomeController  extends CI_Controller
{

    public $module = 'home';

    public function index()
    {
        $this->load->model('banner');
        $this->load->model('category');
        $this->load->model('service');
        $this->load->model('news');

        $this->load->view('master', array(
            'view' => 'home',
            'lastProjects' => $this->category->getCategoryProjects('doneProject'),
            'nextProject' => $this->category->getCategory('nextProject'),
            'doneProject' => $this->category->getCategory('lastProject'),
            'services' => $this->service->all(6),
            'news' => $this->news->all(3),
            'references' => $this->reference->all(),
        ));


    }



} 