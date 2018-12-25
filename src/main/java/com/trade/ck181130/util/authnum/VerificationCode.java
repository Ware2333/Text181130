package com.trade.ck181130.util.authnum;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.study.text181119.UserDao.UserDao;

/**
 * Servlet implementation class Insert
 */
public class VerificationCode extends HttpServlet {
//	UserDao userdao = new UserDao();
	private static Random r = new Random();
	private static char[] chs = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
	private static int acount;
	private static int width;
	private static int height;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VerificationCode() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
	public void init(ServletConfig ser) throws ServletException {
		// TODO Auto-generated method stub
		acount = Integer.parseInt(ser.getInitParameter("count"));
		width = Integer.parseInt(ser.getInitParameter("width"));
		height = Integer.parseInt(ser.getInitParameter("height"));
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		BufferedImage img = new BufferedImage(width, height, BufferedImage.TYPE_3BYTE_BGR);
		Graphics2D a = (Graphics2D) img.getGraphics();// 平面图形
		Color c = new Color(200, 200, 255);// 图形背景颜色s
		a.setColor(c);
		a.fillRect(0, 0, width, height);// 图片的边框
		a.setFont(new Font("隶书", Font.BOLD, 15));
		StringBuffer num = new StringBuffer();
		int index;
		for (int i = 0; i < acount; i++) {
			index = r.nextInt(chs.length);// 随机下标
			a.setColor(new Color(r.nextInt(255), r.nextInt(255), r.nextInt(255)));// 随机颜色
			a.drawString(chs[index] + "", 15 * i + 3, 17);// 画出字符
			num.append(chs[index]);// 验证码字符串
		}
		request.getSession().setAttribute("auto", num.toString());
		ImageIO.write(img, "jpg", response.getOutputStream());
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
