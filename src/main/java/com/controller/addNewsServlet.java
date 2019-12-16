package com.controller;

import com.entity.News;
import com.service.NewsService;
import com.service.ServiceFactory;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Timestamp;

@WebServlet("/addNews")
public class addNewsServlet extends HttpServlet {
    private NewsService newsService = ServiceFactory.getNewsService();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String title = req.getParameter("name");
        String time = req.getParameter("showtime");
        String times[] = time.split("T");
        Timestamp showtime = Timestamp.valueOf(times[0] + " " + times[1] + ":00");
        String editor = req.getParameter("editor");
        String content = req.getParameter("content");
        if (req.getParameter("id")==null ) {    //如果id为空则为添加
            News news = new News(title, showtime, editor, content);
            newsService.addNews(news);
        } else {    //否则为修改，按照ID
            System.out.println("try to upate the news");
            int id = Integer.parseInt(req.getParameter("id"));
            News news = new News(id, title, showtime, editor, content);
            newsService.updateNews(news);
        }
        req.getRequestDispatcher(req.getContextPath() + "/listnew").forward(req, resp);
    }
}