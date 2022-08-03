// ORM class for table 'p1ws'
// WARNING: This class is AUTO-GENERATED. Modify at your own risk.
//
// Debug information:
// Generated date: Wed Oct 21 13:40:01 EDT 2020
// For connector: org.apache.sqoop.manager.PostgresqlManager
import org.apache.hadoop.io.BytesWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.io.Writable;
import org.apache.hadoop.mapred.lib.db.DBWritable;
import com.cloudera.sqoop.lib.JdbcWritableBridge;
import com.cloudera.sqoop.lib.DelimiterSet;
import com.cloudera.sqoop.lib.FieldFormatter;
import com.cloudera.sqoop.lib.RecordParser;
import com.cloudera.sqoop.lib.BooleanParser;
import com.cloudera.sqoop.lib.BlobRef;
import com.cloudera.sqoop.lib.ClobRef;
import com.cloudera.sqoop.lib.LargeObjectLoader;
import com.cloudera.sqoop.lib.SqoopRecord;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class p1ws extends SqoopRecord  implements DBWritable, Writable {
  private final int PROTOCOL_VERSION = 3;
  public int getClassFormatVersion() { return PROTOCOL_VERSION; }
  protected ResultSet __cur_result_set;
  private Integer id;
  public Integer get_id() {
    return id;
  }
  public void set_id(Integer id) {
    this.id = id;
  }
  public p1ws with_id(Integer id) {
    this.id = id;
    return this;
  }
  private String date_time;
  public String get_date_time() {
    return date_time;
  }
  public void set_date_time(String date_time) {
    this.date_time = date_time;
  }
  public p1ws with_date_time(String date_time) {
    this.date_time = date_time;
    return this;
  }
  private String plant_id;
  public String get_plant_id() {
    return plant_id;
  }
  public void set_plant_id(String plant_id) {
    this.plant_id = plant_id;
  }
  public p1ws with_plant_id(String plant_id) {
    this.plant_id = plant_id;
    return this;
  }
  private String source_key;
  public String get_source_key() {
    return source_key;
  }
  public void set_source_key(String source_key) {
    this.source_key = source_key;
  }
  public p1ws with_source_key(String source_key) {
    this.source_key = source_key;
    return this;
  }
  private Double ambient_temperature;
  public Double get_ambient_temperature() {
    return ambient_temperature;
  }
  public void set_ambient_temperature(Double ambient_temperature) {
    this.ambient_temperature = ambient_temperature;
  }
  public p1ws with_ambient_temperature(Double ambient_temperature) {
    this.ambient_temperature = ambient_temperature;
    return this;
  }
  private Double module_temperature;
  public Double get_module_temperature() {
    return module_temperature;
  }
  public void set_module_temperature(Double module_temperature) {
    this.module_temperature = module_temperature;
  }
  public p1ws with_module_temperature(Double module_temperature) {
    this.module_temperature = module_temperature;
    return this;
  }
  private Double irradiation;
  public Double get_irradiation() {
    return irradiation;
  }
  public void set_irradiation(Double irradiation) {
    this.irradiation = irradiation;
  }
  public p1ws with_irradiation(Double irradiation) {
    this.irradiation = irradiation;
    return this;
  }
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof p1ws)) {
      return false;
    }
    p1ws that = (p1ws) o;
    boolean equal = true;
    equal = equal && (this.id == null ? that.id == null : this.id.equals(that.id));
    equal = equal && (this.date_time == null ? that.date_time == null : this.date_time.equals(that.date_time));
    equal = equal && (this.plant_id == null ? that.plant_id == null : this.plant_id.equals(that.plant_id));
    equal = equal && (this.source_key == null ? that.source_key == null : this.source_key.equals(that.source_key));
    equal = equal && (this.ambient_temperature == null ? that.ambient_temperature == null : this.ambient_temperature.equals(that.ambient_temperature));
    equal = equal && (this.module_temperature == null ? that.module_temperature == null : this.module_temperature.equals(that.module_temperature));
    equal = equal && (this.irradiation == null ? that.irradiation == null : this.irradiation.equals(that.irradiation));
    return equal;
  }
  public boolean equals0(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof p1ws)) {
      return false;
    }
    p1ws that = (p1ws) o;
    boolean equal = true;
    equal = equal && (this.id == null ? that.id == null : this.id.equals(that.id));
    equal = equal && (this.date_time == null ? that.date_time == null : this.date_time.equals(that.date_time));
    equal = equal && (this.plant_id == null ? that.plant_id == null : this.plant_id.equals(that.plant_id));
    equal = equal && (this.source_key == null ? that.source_key == null : this.source_key.equals(that.source_key));
    equal = equal && (this.ambient_temperature == null ? that.ambient_temperature == null : this.ambient_temperature.equals(that.ambient_temperature));
    equal = equal && (this.module_temperature == null ? that.module_temperature == null : this.module_temperature.equals(that.module_temperature));
    equal = equal && (this.irradiation == null ? that.irradiation == null : this.irradiation.equals(that.irradiation));
    return equal;
  }
  public void readFields(ResultSet __dbResults) throws SQLException {
    this.__cur_result_set = __dbResults;
    this.id = JdbcWritableBridge.readInteger(1, __dbResults);
    this.date_time = JdbcWritableBridge.readString(2, __dbResults);
    this.plant_id = JdbcWritableBridge.readString(3, __dbResults);
    this.source_key = JdbcWritableBridge.readString(4, __dbResults);
    this.ambient_temperature = JdbcWritableBridge.readDouble(5, __dbResults);
    this.module_temperature = JdbcWritableBridge.readDouble(6, __dbResults);
    this.irradiation = JdbcWritableBridge.readDouble(7, __dbResults);
  }
  public void readFields0(ResultSet __dbResults) throws SQLException {
    this.id = JdbcWritableBridge.readInteger(1, __dbResults);
    this.date_time = JdbcWritableBridge.readString(2, __dbResults);
    this.plant_id = JdbcWritableBridge.readString(3, __dbResults);
    this.source_key = JdbcWritableBridge.readString(4, __dbResults);
    this.ambient_temperature = JdbcWritableBridge.readDouble(5, __dbResults);
    this.module_temperature = JdbcWritableBridge.readDouble(6, __dbResults);
    this.irradiation = JdbcWritableBridge.readDouble(7, __dbResults);
  }
  public void loadLargeObjects(LargeObjectLoader __loader)
      throws SQLException, IOException, InterruptedException {
  }
  public void loadLargeObjects0(LargeObjectLoader __loader)
      throws SQLException, IOException, InterruptedException {
  }
  public void write(PreparedStatement __dbStmt) throws SQLException {
    write(__dbStmt, 0);
  }

  public int write(PreparedStatement __dbStmt, int __off) throws SQLException {
    JdbcWritableBridge.writeInteger(id, 1 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeString(date_time, 2 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(plant_id, 3 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(source_key, 4 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeDouble(ambient_temperature, 5 + __off, 8, __dbStmt);
    JdbcWritableBridge.writeDouble(module_temperature, 6 + __off, 8, __dbStmt);
    JdbcWritableBridge.writeDouble(irradiation, 7 + __off, 8, __dbStmt);
    return 7;
  }
  public void write0(PreparedStatement __dbStmt, int __off) throws SQLException {
    JdbcWritableBridge.writeInteger(id, 1 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeString(date_time, 2 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(plant_id, 3 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(source_key, 4 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeDouble(ambient_temperature, 5 + __off, 8, __dbStmt);
    JdbcWritableBridge.writeDouble(module_temperature, 6 + __off, 8, __dbStmt);
    JdbcWritableBridge.writeDouble(irradiation, 7 + __off, 8, __dbStmt);
  }
  public void readFields(DataInput __dataIn) throws IOException {
this.readFields0(__dataIn);  }
  public void readFields0(DataInput __dataIn) throws IOException {
    if (__dataIn.readBoolean()) { 
        this.id = null;
    } else {
    this.id = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.date_time = null;
    } else {
    this.date_time = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.plant_id = null;
    } else {
    this.plant_id = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.source_key = null;
    } else {
    this.source_key = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.ambient_temperature = null;
    } else {
    this.ambient_temperature = Double.valueOf(__dataIn.readDouble());
    }
    if (__dataIn.readBoolean()) { 
        this.module_temperature = null;
    } else {
    this.module_temperature = Double.valueOf(__dataIn.readDouble());
    }
    if (__dataIn.readBoolean()) { 
        this.irradiation = null;
    } else {
    this.irradiation = Double.valueOf(__dataIn.readDouble());
    }
  }
  public void write(DataOutput __dataOut) throws IOException {
    if (null == this.id) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.id);
    }
    if (null == this.date_time) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, date_time);
    }
    if (null == this.plant_id) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, plant_id);
    }
    if (null == this.source_key) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, source_key);
    }
    if (null == this.ambient_temperature) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeDouble(this.ambient_temperature);
    }
    if (null == this.module_temperature) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeDouble(this.module_temperature);
    }
    if (null == this.irradiation) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeDouble(this.irradiation);
    }
  }
  public void write0(DataOutput __dataOut) throws IOException {
    if (null == this.id) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.id);
    }
    if (null == this.date_time) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, date_time);
    }
    if (null == this.plant_id) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, plant_id);
    }
    if (null == this.source_key) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, source_key);
    }
    if (null == this.ambient_temperature) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeDouble(this.ambient_temperature);
    }
    if (null == this.module_temperature) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeDouble(this.module_temperature);
    }
    if (null == this.irradiation) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeDouble(this.irradiation);
    }
  }
  private static final DelimiterSet __outputDelimiters = new DelimiterSet((char) 44, (char) 10, (char) 0, (char) 0, false);
  public String toString() {
    return toString(__outputDelimiters, true);
  }
  public String toString(DelimiterSet delimiters) {
    return toString(delimiters, true);
  }
  public String toString(boolean useRecordDelim) {
    return toString(__outputDelimiters, useRecordDelim);
  }
  public String toString(DelimiterSet delimiters, boolean useRecordDelim) {
    StringBuilder __sb = new StringBuilder();
    char fieldDelim = delimiters.getFieldsTerminatedBy();
    __sb.append(FieldFormatter.escapeAndEnclose(id==null?"null":"" + id, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(date_time==null?"null":date_time, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(plant_id==null?"null":plant_id, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(source_key==null?"null":source_key, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(ambient_temperature==null?"null":"" + ambient_temperature, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(module_temperature==null?"null":"" + module_temperature, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(irradiation==null?"null":"" + irradiation, delimiters));
    if (useRecordDelim) {
      __sb.append(delimiters.getLinesTerminatedBy());
    }
    return __sb.toString();
  }
  public void toString0(DelimiterSet delimiters, StringBuilder __sb, char fieldDelim) {
    __sb.append(FieldFormatter.escapeAndEnclose(id==null?"null":"" + id, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(date_time==null?"null":date_time, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(plant_id==null?"null":plant_id, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(source_key==null?"null":source_key, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(ambient_temperature==null?"null":"" + ambient_temperature, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(module_temperature==null?"null":"" + module_temperature, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(irradiation==null?"null":"" + irradiation, delimiters));
  }
  private static final DelimiterSet __inputDelimiters = new DelimiterSet((char) 44, (char) 10, (char) 0, (char) 0, false);
  private RecordParser __parser;
  public void parse(Text __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(CharSequence __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(byte [] __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(char [] __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(ByteBuffer __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(CharBuffer __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  private void __loadFromFields(List<String> fields) {
    Iterator<String> __it = fields.listIterator();
    String __cur_str = null;
    try {
    __cur_str = __it.next();
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.id = null; } else {
      this.id = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("null")) { this.date_time = null; } else {
      this.date_time = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("null")) { this.plant_id = null; } else {
      this.plant_id = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("null")) { this.source_key = null; } else {
      this.source_key = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.ambient_temperature = null; } else {
      this.ambient_temperature = Double.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.module_temperature = null; } else {
      this.module_temperature = Double.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.irradiation = null; } else {
      this.irradiation = Double.valueOf(__cur_str);
    }

    } catch (RuntimeException e) {    throw new RuntimeException("Can't parse input data: '" + __cur_str + "'", e);    }  }

  private void __loadFromFields0(Iterator<String> __it) {
    String __cur_str = null;
    try {
    __cur_str = __it.next();
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.id = null; } else {
      this.id = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("null")) { this.date_time = null; } else {
      this.date_time = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("null")) { this.plant_id = null; } else {
      this.plant_id = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("null")) { this.source_key = null; } else {
      this.source_key = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.ambient_temperature = null; } else {
      this.ambient_temperature = Double.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.module_temperature = null; } else {
      this.module_temperature = Double.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.irradiation = null; } else {
      this.irradiation = Double.valueOf(__cur_str);
    }

    } catch (RuntimeException e) {    throw new RuntimeException("Can't parse input data: '" + __cur_str + "'", e);    }  }

  public Object clone() throws CloneNotSupportedException {
    p1ws o = (p1ws) super.clone();
    return o;
  }

  public void clone0(p1ws o) throws CloneNotSupportedException {
  }

  public Map<String, Object> getFieldMap() {
    Map<String, Object> __sqoop$field_map = new TreeMap<String, Object>();
    __sqoop$field_map.put("id", this.id);
    __sqoop$field_map.put("date_time", this.date_time);
    __sqoop$field_map.put("plant_id", this.plant_id);
    __sqoop$field_map.put("source_key", this.source_key);
    __sqoop$field_map.put("ambient_temperature", this.ambient_temperature);
    __sqoop$field_map.put("module_temperature", this.module_temperature);
    __sqoop$field_map.put("irradiation", this.irradiation);
    return __sqoop$field_map;
  }

  public void getFieldMap0(Map<String, Object> __sqoop$field_map) {
    __sqoop$field_map.put("id", this.id);
    __sqoop$field_map.put("date_time", this.date_time);
    __sqoop$field_map.put("plant_id", this.plant_id);
    __sqoop$field_map.put("source_key", this.source_key);
    __sqoop$field_map.put("ambient_temperature", this.ambient_temperature);
    __sqoop$field_map.put("module_temperature", this.module_temperature);
    __sqoop$field_map.put("irradiation", this.irradiation);
  }

  public void setField(String __fieldName, Object __fieldVal) {
    if ("id".equals(__fieldName)) {
      this.id = (Integer) __fieldVal;
    }
    else    if ("date_time".equals(__fieldName)) {
      this.date_time = (String) __fieldVal;
    }
    else    if ("plant_id".equals(__fieldName)) {
      this.plant_id = (String) __fieldVal;
    }
    else    if ("source_key".equals(__fieldName)) {
      this.source_key = (String) __fieldVal;
    }
    else    if ("ambient_temperature".equals(__fieldName)) {
      this.ambient_temperature = (Double) __fieldVal;
    }
    else    if ("module_temperature".equals(__fieldName)) {
      this.module_temperature = (Double) __fieldVal;
    }
    else    if ("irradiation".equals(__fieldName)) {
      this.irradiation = (Double) __fieldVal;
    }
    else {
      throw new RuntimeException("No such field: " + __fieldName);
    }
  }
  public boolean setField0(String __fieldName, Object __fieldVal) {
    if ("id".equals(__fieldName)) {
      this.id = (Integer) __fieldVal;
      return true;
    }
    else    if ("date_time".equals(__fieldName)) {
      this.date_time = (String) __fieldVal;
      return true;
    }
    else    if ("plant_id".equals(__fieldName)) {
      this.plant_id = (String) __fieldVal;
      return true;
    }
    else    if ("source_key".equals(__fieldName)) {
      this.source_key = (String) __fieldVal;
      return true;
    }
    else    if ("ambient_temperature".equals(__fieldName)) {
      this.ambient_temperature = (Double) __fieldVal;
      return true;
    }
    else    if ("module_temperature".equals(__fieldName)) {
      this.module_temperature = (Double) __fieldVal;
      return true;
    }
    else    if ("irradiation".equals(__fieldName)) {
      this.irradiation = (Double) __fieldVal;
      return true;
    }
    else {
      return false;    }
  }
}
