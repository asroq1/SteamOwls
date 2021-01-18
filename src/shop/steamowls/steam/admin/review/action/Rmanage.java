package shop.steamowls.steam.admin.review.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shop.steamowls.common.Action;
import shop.steamowls.common.ActionForward;
import shop.steamowls.common.LoginManager;
import shop.steamowls.steam.admin.review.service.ReviewService;
import shop.steamowls.steam.admin.review.vo.ReviewVo;

public class Rmanage implements Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		LoginManager lm = LoginManager.getInstance();
		String sq = lm.getMemberSq(session);

		if (sq == null || sq.equals("")) {
			ActionForward forward = new ActionForward();
			forward.setPath("/admin");
			forward.setRedirect(true);
			return forward;
		}
		
		ReviewService svc = new ReviewService();
		ArrayList<ReviewVo> list = svc.rManage();
		
		request.setAttribute("list", list);
		
		ActionForward forward = new ActionForward();
		forward.setPath("/views/admin/Rmanage.jsp");
		return forward;
	}
}
