#include "etl.h"

#include <glog/logging.h>

#include "absl/strings/str_split.h"

namespace rimuru {

std::vector<std::vector<std::string>> ETL::read_csv(const std::string& file) {
  std::ifstream data_file(file);

  std::vector<std::vector<std::string>> data_string;

  if (data_file.fail()) {
    LOG(ERROR) << "ERROR(FILE NOT FOUND)\n"
               << "File(" << file << "): could not be reached";
    return data_string;
  }

  std::string current_read_line;
  const std::string delimiter{","};

  while (std::getline(data_file, current_read_line)) {
    std::vector<std::string> raw_data =
        absl::StrSplit(current_read_line, delimiter);
    data_string.push_back(raw_data);
  }

  data_file.close();

  return data_string;
};

Eigen::MatrixXd ETL::to_eigen(std::vector<std::vector<std::string>> dataset,
                              int rows, int cols) const {
  if (hdr_flag_) {
    rows = rows - 1;
  }

  Eigen::MatrixXd dataset_matrix(cols, rows);

  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; ++j) {
      dataset_matrix(j, i) = std::atof(dataset[i][j].c_str());
    }
  }

  return dataset_matrix.transpose();
};

auto ETL::mean(Eigen::MatrixXd& data) -> decltype(data.colwise().mean()) {
  return data.colwise().mean();
}

auto ETL::std_dev(Eigen::MatrixXd& data) -> decltype(
    ((data.array().square().colwise().sum()) / (data.rows() - 1)).sqrt()) {
  return ((data.array().square().colwise().sum()) / (data.rows() - 1)).sqrt();
}

// Z-Score normalization
// three member functions: mean, sd, z-score

// The benefit of performing this type of normalization is that the
// outlier in the dataset will transform in such a way that it’s no
// longer a massive outlier.
Eigen::MatrixXd ETL::z_normalize(Eigen::MatrixXd& data) {
  auto mean = ETL::mean(data);
  Eigen::MatrixXd scaled_data = data.array().rowwise() - mean;

  Eigen::MatrixXd norm_val = scaled_data.array().rowwise() / ETL::std_dev(data);
  return norm_val;
};

}  // namespace rimuru