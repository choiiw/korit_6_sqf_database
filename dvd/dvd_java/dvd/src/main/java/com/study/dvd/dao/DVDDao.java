package com.study.dvd.dao;

import com.study.dvd.db.DBConnectionMgr;
import com.study.dvd.entity.DVD;
import com.study.dvd.entity.Producer;
import com.study.dvd.entity.Publisher;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DVDDao {
    public static int addDvd(DVD dvd) {
        DBConnectionMgr pool = DBConnectionMgr.getInstance();

        Connection connection = null;
        PreparedStatement preparedStatement = null;
        int successCount = 0;

        try {
            connection = pool.getConnection();  // 데이터베이스 연결
            String sql = "insert into dvd_tb values(0, ?, ?, ?, ?, ?, now())";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, dvd.getRegistrationNumber());
            preparedStatement.setString(2, dvd.getTitle());
            preparedStatement.setInt(3, dvd.getProducer().getProducerId());
            preparedStatement.setInt(4, dvd.getPublisher().getPublisherId());
            preparedStatement.setInt(5, dvd.getPublicationYear());
            successCount = preparedStatement.executeUpdate();

        } catch (Exception e) {

        }finally {
            pool.freeConnection(connection, preparedStatement);
        }

        return successCount;
    }
    public static int addProducer(Producer producer) {
        DBConnectionMgr pool = DBConnectionMgr.getInstance();

        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet generatedKeys = null;
        int successCount = 0;

        try {
            connection = pool.getConnection();  // 데이터베이스 연결
            String sql = "insert into producer_tb values(0, ?)";
            preparedStatement = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);   // 미완성된 쿼리 실행시킬 준비
            preparedStatement.setString(1, producer.getProducerName());  // ? 자리에 데이터 채우기
            successCount = preparedStatement.executeUpdate();   // 쿼리 실행
            generatedKeys = preparedStatement.getGeneratedKeys();
            generatedKeys.next();
            producer.setProducerId(generatedKeys.getInt(1));

        } catch (Exception e) {

        } finally {
            pool.freeConnection(connection, preparedStatement, generatedKeys);
        }

        return successCount;
    }

    public static int addPublisher(Publisher publisher) {
        DBConnectionMgr pool = DBConnectionMgr.getInstance();

        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet generatedKeys = null;
        int successCount = 0;

        try {
            connection = pool.getConnection();  // 데이터베이스 연결
            String sql = "insert into publisher_tb values(0, ?)";
            preparedStatement = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);   // 미완성된 쿼리 실행시킬 준비
            preparedStatement.setString(1, publisher.getPublisherName());  // ? 자리에 데이터 채우기
            successCount = preparedStatement.executeUpdate();   // 쿼리 실행
            generatedKeys = preparedStatement.getGeneratedKeys();
            generatedKeys.next();
            publisher.setPublisherId(generatedKeys.getInt(1));

        } catch (Exception e) {

        } finally {
            pool.freeConnection(connection, preparedStatement, generatedKeys);
        }

        return successCount;
    }
}

