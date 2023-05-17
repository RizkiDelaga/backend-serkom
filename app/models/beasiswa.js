'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Beasiswa extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Beasiswa.init({
    name: DataTypes.STRING,
    email: DataTypes.STRING,
    noTelp: DataTypes.INTEGER,
    currentSemester: DataTypes.INTEGER,
    lastIPK: DataTypes.INTEGER,
    beasiswaType: DataTypes.STRING,
    files: DataTypes.STRING,
    status: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'Beasiswa',
  });
  return Beasiswa;
};