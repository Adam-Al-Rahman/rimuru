/**
 * @file etl.h
 * @author Adam-Al-Rahman (https://atiq-ur-rehaman.netlify.app)
 * @brief ETL is a process that extracts, transforms, and loads data.
 * @date 2022-11-07
 *
 * @copyright Copyright (Adam-Al-Rahman/RIMURU) 2022
 *
 */

#ifndef RIMURU_CORE_CORE_ETL_H_
#define RIMURU_CORE_CORE_ETL_H_

#include <fstream>
#include <iostream>
#include <vector>

#include "third_party/eigen3/Eigen/Dense"

namespace rimuru {

class ETL {
  bool hdr_flag_;

 public:
  explicit ETL(bool hdr_flag) : hdr_flag_(std::move(hdr_flag)) {}

  static std::vector<std::vector<std::string>> read_csv(
      const std::string& file);

  [[nodiscard]] Eigen::MatrixXd to_eigen(
      std::vector<std::vector<std::string>> dataset, int rows, int cols) const;

  static auto mean(Eigen::MatrixXd& data) -> decltype(data.colwise().mean());

  static auto std_dev(Eigen::MatrixXd& data) -> decltype(
      ((data.array().square().colwise().sum()) / (data.rows() - 1)).sqrt());
  static Eigen::MatrixXd z_normalize(Eigen::MatrixXd& data);
};
}  // namespace rimuru

#endif  // RIMURU_CORE_CORE_ETL_