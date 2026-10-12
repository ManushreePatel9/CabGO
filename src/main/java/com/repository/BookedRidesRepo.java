package com.repository;

import com.entity.BookingsEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface BookedRidesRepo extends JpaRepository<BookingsEntity, Long> {

    // Driver search query by pickup city
    List<BookingsEntity> findByPickupIgnoreCaseAndStatus(String pickup, String status);

    // Passenger View My Rides
    @Query("SELECT b FROM BookingsEntity b WHERE b.user.userId = :userId")
    List<BookingsEntity> findRidesByUserId(@Param("userId") Long userId);

    // Driver View My Accepted Rides
    @Query("SELECT b FROM BookingsEntity b WHERE b.driverId = :driverId")
    List<BookingsEntity> findRidesByDriverId(@Param("driverId") Long driverId);
}