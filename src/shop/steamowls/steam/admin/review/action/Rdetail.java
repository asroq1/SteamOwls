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

public class Rdetail implements Action{
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
		
		String review_sq = request.getParameter("review_sq");
		if(review_sq == null || review_sq.equals("")) {
			ActionForward forward = new ActionForward();
			forward.setPath("/admin/Rmanage");
			forward.setRedirect(true);
			return forward;
		}
		
		ReviewVo reviewVo = new ReviewVo();
		reviewVo.setReview_sq(Integer.parseInt(review_sq));
		
		ReviewService svc = new ReviewService();
		ReviewVo vo = svc.rDetail(reviewVo);
		
		request.setAttribute("vo", vo);
		
		ActionForward forward = new ActionForward();
		forward.setPath("/views/admin/Rdetail.jsp");
		return forward;
	}
}
