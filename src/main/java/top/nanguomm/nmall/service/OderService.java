package top.nanguomm.nmall.service;

import top.nanguomm.nmall.entity.Order;


public interface OderService {
    void add(Order order);

    Order create(Order order);
}
