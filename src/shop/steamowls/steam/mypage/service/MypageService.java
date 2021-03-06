package shop.steamowls.steam.mypage.service;

import java.sql.Connection;
import java.util.ArrayList;

import shop.steamowls.common.Pagenation;
import shop.steamowls.steam.booking.dao.BookingDao;
import shop.steamowls.steam.booking.vo.BookingVo;
import shop.steamowls.steam.member.dao.MemberDao;
import shop.steamowls.steam.member.vo.MemberVo;
import shop.steamowls.steam.mypage.dao.MypageDao;
import shop.steamowls.steam.mypage.vo.BoardVo;
import shop.steamowls.steam.mypage.vo.MypageVo;

import static shop.steamowls.common.JdbcUtil.*;

public class MypageService {
	public boolean modify(MypageVo mypageVo) {
		MypageDao mypageDao = MypageDao.getInstance();
		Connection con = getConnection();
		mypageDao.setConnection(con);

		int count = mypageDao.modify(mypageVo);
		boolean isSuccess = false;
		if (count > 0) {
			commit(con);
			isSuccess = true;
		} else {
			rollback(con);
			isSuccess = false;
		}
		close(con);
		return isSuccess;
	}
	
	public boolean withdraw(MypageVo mypageVo) {
		MypageDao mypageDao = MypageDao.getInstance();
		Connection con = getConnection();
		mypageDao.setConnection(con);

		int count = mypageDao.withdraw(mypageVo);
		boolean isSuccess = false;
		if (count > 0) {
			commit(con);
			isSuccess = true;
		} else {
			rollback(con);
			isSuccess = false;
		}
		close(con);
		return isSuccess;
	}
	
	public MypageVo mCheckPw(MypageVo mypageVo) {
		MypageDao mypageDao = MypageDao.getInstance();
		Connection con = getConnection();
		mypageDao.setConnection(con);
		MypageVo vo = new MypageVo();
		vo = mypageDao.mCheckPw(mypageVo);

		close(con);
		return vo;
	}

	public ArrayList<BookingVo> bHistory(BookingVo bookingVo) {
		MypageDao mypageDao = MypageDao.getInstance();
		Connection con = getConnection();
		mypageDao.setConnection(con);
		ArrayList<BookingVo> list = mypageDao.bHistory(bookingVo);
		close(con);
		return list;
	}
	public BookingVo bCancel(BookingVo bookingVo) {
		MypageDao mypageDao = MypageDao.getInstance();
		Connection con = getConnection();
		mypageDao.setConnection(con);
		BookingVo vo = mypageDao.bCancel(bookingVo);
		close(con);
		return vo;
	}

	public boolean bCancelProc(int booking_sq) {
		MypageDao mypageDao = MypageDao.getInstance();
		Connection con = getConnection();
		mypageDao.setConnection(con);

		int count = mypageDao.bCancelProc(booking_sq);
		boolean isSuccess = false;
		if (count > 0) {
			commit(con);
			isSuccess = true;
		} else {
			rollback(con);
			isSuccess = false;
		}
		close(con);
		return isSuccess;
	}
	
	public ArrayList<MypageVo> rMyReview(MypageVo mypageVo, Pagenation pagenation) {
		MypageDao mypageDao = MypageDao.getInstance();
		Connection con = getConnection();
		mypageDao.setConnection(con);
		ArrayList<MypageVo> list = mypageDao.rMyReview(mypageVo, pagenation);
		close(con);
		return list;
	}
	
	
	public MypageVo rMyReviewDetail(MypageVo mypageVo) {
		MypageDao mypageDao = MypageDao.getInstance();
		Connection con = getConnection();
		mypageDao.setConnection(con);
		MypageVo vo = new MypageVo();
		vo = mypageDao.rMyReviewDetail(mypageVo);

		close(con);
		return vo;
	}
	
	public boolean rMyReviewModify(MypageVo mypageVo) {
		MypageDao mypageDao = MypageDao.getInstance();
		Connection con = getConnection();
		mypageDao.setConnection(con);

		int count = mypageDao.rMyReviewModify(mypageVo);
		boolean isSuccess = false;
		if (count > 0) {
			commit(con);
			isSuccess = true;
		} else {
			rollback(con);
			isSuccess = false;
		}
		close(con);
		return isSuccess;
	}
	
	public boolean rMyReviewDelete(MypageVo mypageVo) {
		MypageDao mypageDao = MypageDao.getInstance();
		Connection con = getConnection();
		mypageDao.setConnection(con);

		int count = mypageDao.rMyReviewDelete(mypageVo);
		boolean isSuccess = false;
		if (count > 0) {
			commit(con);
			isSuccess = true;
		} else {
			rollback(con);
			isSuccess = false;
		}
		close(con);
		return isSuccess;
	}
	
	public boolean rWriting(MypageVo mypageVo) {
		MypageDao mypageDao = MypageDao.getInstance();
		Connection con = getConnection();
		mypageDao.setConnection(con);

		int count = mypageDao.rWriting(mypageVo);
		boolean isSuccess = false;
		if (count > 0) {
			commit(con);
			isSuccess = true;
		} else {
			rollback(con);
			isSuccess = false;
		}
		close(con);
		return isSuccess;
	}
	
	public ArrayList<MypageVo> reviewList() {
		MypageDao mypageDao = MypageDao.getInstance();
		Connection con = getConnection();
		mypageDao.setConnection(con);
		ArrayList<MypageVo> list = mypageDao.reviewList();
		close(con);
		return list;
	}
	
	public ArrayList<BoardVo> getBoardList(Pagenation pagenation) {
		MypageDao mypageDao = MypageDao.getInstance();
		Connection con = getConnection();
		mypageDao.setConnection(con);
		ArrayList<BoardVo> list = mypageDao.getBoardList(pagenation);
		close(con);
		return list;
	}
	
	public BoardVo qDetail(String board_sq) {
		MypageDao mypageDao = MypageDao.getInstance();
		Connection con = getConnection();
		mypageDao.setConnection(con);
		BoardVo vo = new BoardVo();
		vo = mypageDao.qDetail(board_sq);

		close(con);
		return vo;
	}

	public boolean qDelete(String board_sq) {
		MypageDao mypageDao = MypageDao.getInstance();
		Connection con = getConnection();
		mypageDao.setConnection(con);

		int count = mypageDao.qDelete(board_sq);
		boolean isSuccess = false;
		if (count > 0) {
			commit(con);
			isSuccess = true;
		} else {
			rollback(con);
			isSuccess = false;
		}
		close(con);
		return isSuccess;
	}

	public boolean QWriting(BoardVo boardVo) {

		MypageDao mypageDao = MypageDao.getInstance();
		Connection con = getConnection();
		mypageDao.setConnection(con);

		int count = mypageDao.QWriting(boardVo);
		boolean isSuccess = false;
		if (count > 0) {
			commit(con);
			isSuccess = true;
		} else {
			rollback(con);
			isSuccess = false;
		}
		close(con);
		return isSuccess;
	}
	public BoardVo findBoardSq (BoardVo boardVo) {
		MypageDao mypageDao = MypageDao.getInstance();
		Connection con = getConnection();
		mypageDao.setConnection(con);
		BoardVo vo = mypageDao.findBoardSq(boardVo);

		close(con);
		return vo;
	}
	public boolean addAnswerTb(BoardVo vo) {

		MypageDao mypageDao = MypageDao.getInstance();
		Connection con = getConnection();
		mypageDao.setConnection(con);

		int count = mypageDao.addAnswerTb(vo);
		boolean isSuccess = false;
		if (count > 0) {
			commit(con);
			isSuccess = true;
		} else {
			rollback(con);
			isSuccess = false;
		}
		close(con);
		return isSuccess;
	}
	public BoardVo qModify (BoardVo boardVo) {
		MypageDao mypageDao = MypageDao.getInstance();
		Connection con = getConnection();
		mypageDao.setConnection(con);
		BoardVo vo = mypageDao.qModify(boardVo);

		close(con);
		return vo;
	}
	
	public boolean qModifyProc(BoardVo boardVo) {

		MypageDao mypageDao = MypageDao.getInstance();
		Connection con = getConnection();
		mypageDao.setConnection(con);

		int count = mypageDao.qModifyProc(boardVo);
		boolean isSuccess = false;
		if (count > 0) {
			commit(con);
			isSuccess = true;
		} else {
			rollback(con);
			isSuccess = false;
		}
		close(con);
		return isSuccess;
	}
	
	public int getReviewCount(int member_sq) {
		MypageDao dao = MypageDao.getInstance();
		Connection con = getConnection();
		dao.setConnection(con);
		int count = dao.getReviewCount(member_sq);
		close(con);
		return count;
	}
	
	public int getBoardCount() {
		MypageDao dao = MypageDao.getInstance();
		Connection con = getConnection();
		dao.setConnection(con);
		int count = dao.getBoardCount();
		close(con);
		return count;
	}
}
