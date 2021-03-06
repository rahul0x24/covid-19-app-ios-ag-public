//
// Copyright © 2020 NHSX. All rights reserved.
//

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
private struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
    struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
    typealias Version = _2
}

struct TemporaryExposureKeyExport {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.
    
    /// Time window of keys in the file, based on arrival
    /// at the server, in UTC seconds.
    var startTimestamp: UInt64 {
        get { _startTimestamp ?? 0 }
        set { _startTimestamp = newValue }
    }
    
    /// Returns true if `startTimestamp` has been explicitly set.
    var hasStartTimestamp: Bool { self._startTimestamp != nil }
    /// Clears the value of `startTimestamp`. Subsequent reads from it will return its default value.
    mutating func clearStartTimestamp() { _startTimestamp = nil }
    
    var endTimestamp: UInt64 {
        get { _endTimestamp ?? 0 }
        set { _endTimestamp = newValue }
    }
    
    /// Returns true if `endTimestamp` has been explicitly set.
    var hasEndTimestamp: Bool { self._endTimestamp != nil }
    /// Clears the value of `endTimestamp`. Subsequent reads from it will return its default value.
    mutating func clearEndTimestamp() { _endTimestamp = nil }
    
    /// Region from which these keys came (for example, MCC).
    var region: String {
        get { _region ?? String() }
        set { _region = newValue }
    }
    
    /// Returns true if `region` has been explicitly set.
    var hasRegion: Bool { self._region != nil }
    /// Clears the value of `region`. Subsequent reads from it will return its default value.
    mutating func clearRegion() { _region = nil }
    
    /// Reserved for future use. Both batch_num and batch_size
    /// must be set to a value of 1.
    var batchNum: Int32 {
        get { _batchNum ?? 0 }
        set { _batchNum = newValue }
    }
    
    /// Returns true if `batchNum` has been explicitly set.
    var hasBatchNum: Bool { self._batchNum != nil }
    /// Clears the value of `batchNum`. Subsequent reads from it will return its default value.
    mutating func clearBatchNum() { _batchNum = nil }
    
    var batchSize: Int32 {
        get { _batchSize ?? 0 }
        set { _batchSize = newValue }
    }
    
    /// Returns true if `batchSize` has been explicitly set.
    var hasBatchSize: Bool { self._batchSize != nil }
    /// Clears the value of `batchSize`. Subsequent reads from it will return its default value.
    mutating func clearBatchSize() { _batchSize = nil }
    
    /// Information about associated signatures.
    var signatureInfos: [SignatureInfo] = []
    
    /// The temporary exposure keys themselves.
    var keys: [TemporaryExposureKey] = []
    
    var unknownFields = SwiftProtobuf.UnknownStorage()
    
    init() {}
    
    fileprivate var _startTimestamp: UInt64?
    fileprivate var _endTimestamp: UInt64?
    fileprivate var _region: String?
    fileprivate var _batchNum: Int32?
    fileprivate var _batchSize: Int32?
}

struct SignatureInfo {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.
    
    /// App Store app bundle ID.
    var appBundleID: String {
        get { _appBundleID ?? String() }
        set { _appBundleID = newValue }
    }
    
    /// Returns true if `appBundleID` has been explicitly set.
    var hasAppBundleID: Bool { self._appBundleID != nil }
    /// Clears the value of `appBundleID`. Subsequent reads from it will return its default value.
    mutating func clearAppBundleID() { _appBundleID = nil }
    
    /// Android app package name.
    var androidPackage: String {
        get { _androidPackage ?? String() }
        set { _androidPackage = newValue }
    }
    
    /// Returns true if `androidPackage` has been explicitly set.
    var hasAndroidPackage: Bool { self._androidPackage != nil }
    /// Clears the value of `androidPackage`. Subsequent reads from it will return its default value.
    mutating func clearAndroidPackage() { _androidPackage = nil }
    
    /// Key version in case the EN server signing key is rotated.
    var verificationKeyVersion: String {
        get { _verificationKeyVersion ?? String() }
        set { _verificationKeyVersion = newValue }
    }
    
    /// Returns true if `verificationKeyVersion` has been explicitly set.
    var hasVerificationKeyVersion: Bool { self._verificationKeyVersion != nil }
    /// Clears the value of `verificationKeyVersion`. Subsequent reads from it will return its default value.
    mutating func clearVerificationKeyVersion() { _verificationKeyVersion = nil }
    
    /// Three-digit mobile country code (MCC) for validating the key file.
    /// If a region has more than one MCC, the server can choose
    /// which MCC to use. This value does not have to match the client's MCC,
    /// but must correspond to one of the supported MCCs for its region.
    var verificationKeyID: String {
        get { _verificationKeyID ?? String() }
        set { _verificationKeyID = newValue }
    }
    
    /// Returns true if `verificationKeyID` has been explicitly set.
    var hasVerificationKeyID: Bool { self._verificationKeyID != nil }
    /// Clears the value of `verificationKeyID`. Subsequent reads from it will return its default value.
    mutating func clearVerificationKeyID() { _verificationKeyID = nil }
    
    /// All keys must be signed using the SHA-256 with ECDSA algorithm.
    /// This field must contain the string "1.2.840.10045.4.3.2".
    var signatureAlgorithm: String {
        get { _signatureAlgorithm ?? String() }
        set { _signatureAlgorithm = newValue }
    }
    
    /// Returns true if `signatureAlgorithm` has been explicitly set.
    var hasSignatureAlgorithm: Bool { self._signatureAlgorithm != nil }
    /// Clears the value of `signatureAlgorithm`. Subsequent reads from it will return its default value.
    mutating func clearSignatureAlgorithm() { _signatureAlgorithm = nil }
    
    var unknownFields = SwiftProtobuf.UnknownStorage()
    
    init() {}
    
    fileprivate var _appBundleID: String?
    fileprivate var _androidPackage: String?
    fileprivate var _verificationKeyVersion: String?
    fileprivate var _verificationKeyID: String?
    fileprivate var _signatureAlgorithm: String?
}

struct TemporaryExposureKey {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.
    
    /// Temporary exposure key.
    var keyData: Data {
        get { _keyData ?? SwiftProtobuf.Internal.emptyData }
        set { _keyData = newValue }
    }
    
    /// Returns true if `keyData` has been explicitly set.
    var hasKeyData: Bool { self._keyData != nil }
    /// Clears the value of `keyData`. Subsequent reads from it will return its default value.
    mutating func clearKeyData() { _keyData = nil }
    
    /// Varying risk associated with a key depending on the diagnosis method.
    var transmissionRiskLevel: Int32 {
        get { _transmissionRiskLevel ?? 0 }
        set { _transmissionRiskLevel = newValue }
    }
    
    /// Returns true if `transmissionRiskLevel` has been explicitly set.
    var hasTransmissionRiskLevel: Bool { self._transmissionRiskLevel != nil }
    /// Clears the value of `transmissionRiskLevel`. Subsequent reads from it will return its default value.
    mutating func clearTransmissionRiskLevel() { _transmissionRiskLevel = nil }
    
    /// Number representing the beginning interval for temporary exposure
    /// key validity (ENIntervalNumber).
    var rollingStartIntervalNumber: Int32 {
        get { _rollingStartIntervalNumber ?? 0 }
        set { _rollingStartIntervalNumber = newValue }
    }
    
    /// Returns true if `rollingStartIntervalNumber` has been explicitly set.
    var hasRollingStartIntervalNumber: Bool { self._rollingStartIntervalNumber != nil }
    /// Clears the value of `rollingStartIntervalNumber`. Subsequent reads from it will return its default value.
    mutating func clearRollingStartIntervalNumber() { _rollingStartIntervalNumber = nil }
    
    /// Number of intervals in a period.
    var rollingPeriod: Int32 {
        get { _rollingPeriod ?? 144 }
        set { _rollingPeriod = newValue }
    }
    
    /// Returns true if `rollingPeriod` has been explicitly set.
    var hasRollingPeriod: Bool { self._rollingPeriod != nil }
    /// Clears the value of `rollingPeriod`. Subsequent reads from it will return its default value.
    mutating func clearRollingPeriod() { _rollingPeriod = nil }
    
    var unknownFields = SwiftProtobuf.UnknownStorage()
    
    init() {}
    
    fileprivate var _keyData: Data?
    fileprivate var _transmissionRiskLevel: Int32?
    fileprivate var _rollingStartIntervalNumber: Int32?
    fileprivate var _rollingPeriod: Int32?
}

struct TEKSignatureList {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.
    
    /// Information about associated signatures.
    var signatures: [TEKSignature] = []
    
    var unknownFields = SwiftProtobuf.UnknownStorage()
    
    init() {}
}

struct TEKSignature {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.
    
    /// Information to uniquely identify the public key associated
    /// with the EN server's signing key.
    var signatureInfo: SignatureInfo {
        get { _signatureInfo ?? SignatureInfo() }
        set { _signatureInfo = newValue }
    }
    
    /// Returns true if `signatureInfo` has been explicitly set.
    var hasSignatureInfo: Bool { self._signatureInfo != nil }
    /// Clears the value of `signatureInfo`. Subsequent reads from it will return its default value.
    mutating func clearSignatureInfo() { _signatureInfo = nil }
    
    /// Reserved for future use. Both batch_num and batch_size
    /// must be set to a value of 1.
    var batchNum: Int32 {
        get { _batchNum ?? 0 }
        set { _batchNum = newValue }
    }
    
    /// Returns true if `batchNum` has been explicitly set.
    var hasBatchNum: Bool { self._batchNum != nil }
    /// Clears the value of `batchNum`. Subsequent reads from it will return its default value.
    mutating func clearBatchNum() { _batchNum = nil }
    
    var batchSize: Int32 {
        get { _batchSize ?? 0 }
        set { _batchSize = newValue }
    }
    
    /// Returns true if `batchSize` has been explicitly set.
    var hasBatchSize: Bool { self._batchSize != nil }
    /// Clears the value of `batchSize`. Subsequent reads from it will return its default value.
    mutating func clearBatchSize() { _batchSize = nil }
    
    /// Signature in X9.62 format (ASN.1 SEQUENCE of two INTEGER fields).
    var signature: Data {
        get { _signature ?? SwiftProtobuf.Internal.emptyData }
        set { _signature = newValue }
    }
    
    /// Returns true if `signature` has been explicitly set.
    var hasSignature: Bool { self._signature != nil }
    /// Clears the value of `signature`. Subsequent reads from it will return its default value.
    mutating func clearSignature() { _signature = nil }
    
    var unknownFields = SwiftProtobuf.UnknownStorage()
    
    init() {}
    
    fileprivate var _signatureInfo: SignatureInfo?
    fileprivate var _batchNum: Int32?
    fileprivate var _batchSize: Int32?
    fileprivate var _signature: Data?
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension TemporaryExposureKeyExport: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = "TemporaryExposureKeyExport"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "start_timestamp"),
        2: .standard(proto: "end_timestamp"),
        3: .same(proto: "region"),
        4: .standard(proto: "batch_num"),
        5: .standard(proto: "batch_size"),
        6: .standard(proto: "signature_infos"),
        7: .same(proto: "keys"),
    ]
    
    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            switch fieldNumber {
            case 1: try decoder.decodeSingularFixed64Field(value: &_startTimestamp)
            case 2: try decoder.decodeSingularFixed64Field(value: &_endTimestamp)
            case 3: try decoder.decodeSingularStringField(value: &_region)
            case 4: try decoder.decodeSingularInt32Field(value: &_batchNum)
            case 5: try decoder.decodeSingularInt32Field(value: &_batchSize)
            case 6: try decoder.decodeRepeatedMessageField(value: &signatureInfos)
            case 7: try decoder.decodeRepeatedMessageField(value: &keys)
            default: break
            }
        }
    }
    
    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if let v = _startTimestamp {
            try visitor.visitSingularFixed64Field(value: v, fieldNumber: 1)
        }
        if let v = _endTimestamp {
            try visitor.visitSingularFixed64Field(value: v, fieldNumber: 2)
        }
        if let v = _region {
            try visitor.visitSingularStringField(value: v, fieldNumber: 3)
        }
        if let v = _batchNum {
            try visitor.visitSingularInt32Field(value: v, fieldNumber: 4)
        }
        if let v = _batchSize {
            try visitor.visitSingularInt32Field(value: v, fieldNumber: 5)
        }
        if !signatureInfos.isEmpty {
            try visitor.visitRepeatedMessageField(value: signatureInfos, fieldNumber: 6)
        }
        if !keys.isEmpty {
            try visitor.visitRepeatedMessageField(value: keys, fieldNumber: 7)
        }
        try unknownFields.traverse(visitor: &visitor)
    }
    
    static func == (lhs: TemporaryExposureKeyExport, rhs: TemporaryExposureKeyExport) -> Bool {
        if lhs._startTimestamp != rhs._startTimestamp { return false }
        if lhs._endTimestamp != rhs._endTimestamp { return false }
        if lhs._region != rhs._region { return false }
        if lhs._batchNum != rhs._batchNum { return false }
        if lhs._batchSize != rhs._batchSize { return false }
        if lhs.signatureInfos != rhs.signatureInfos { return false }
        if lhs.keys != rhs.keys { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension SignatureInfo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = "SignatureInfo"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "app_bundle_id"),
        2: .standard(proto: "android_package"),
        3: .standard(proto: "verification_key_version"),
        4: .standard(proto: "verification_key_id"),
        5: .standard(proto: "signature_algorithm"),
    ]
    
    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            switch fieldNumber {
            case 1: try decoder.decodeSingularStringField(value: &_appBundleID)
            case 2: try decoder.decodeSingularStringField(value: &_androidPackage)
            case 3: try decoder.decodeSingularStringField(value: &_verificationKeyVersion)
            case 4: try decoder.decodeSingularStringField(value: &_verificationKeyID)
            case 5: try decoder.decodeSingularStringField(value: &_signatureAlgorithm)
            default: break
            }
        }
    }
    
    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if let v = _appBundleID {
            try visitor.visitSingularStringField(value: v, fieldNumber: 1)
        }
        if let v = _androidPackage {
            try visitor.visitSingularStringField(value: v, fieldNumber: 2)
        }
        if let v = _verificationKeyVersion {
            try visitor.visitSingularStringField(value: v, fieldNumber: 3)
        }
        if let v = _verificationKeyID {
            try visitor.visitSingularStringField(value: v, fieldNumber: 4)
        }
        if let v = _signatureAlgorithm {
            try visitor.visitSingularStringField(value: v, fieldNumber: 5)
        }
        try unknownFields.traverse(visitor: &visitor)
    }
    
    static func == (lhs: SignatureInfo, rhs: SignatureInfo) -> Bool {
        if lhs._appBundleID != rhs._appBundleID { return false }
        if lhs._androidPackage != rhs._androidPackage { return false }
        if lhs._verificationKeyVersion != rhs._verificationKeyVersion { return false }
        if lhs._verificationKeyID != rhs._verificationKeyID { return false }
        if lhs._signatureAlgorithm != rhs._signatureAlgorithm { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension TemporaryExposureKey: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = "TemporaryExposureKey"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "key_data"),
        2: .standard(proto: "transmission_risk_level"),
        3: .standard(proto: "rolling_start_interval_number"),
        4: .standard(proto: "rolling_period"),
    ]
    
    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            switch fieldNumber {
            case 1: try decoder.decodeSingularBytesField(value: &_keyData)
            case 2: try decoder.decodeSingularInt32Field(value: &_transmissionRiskLevel)
            case 3: try decoder.decodeSingularInt32Field(value: &_rollingStartIntervalNumber)
            case 4: try decoder.decodeSingularInt32Field(value: &_rollingPeriod)
            default: break
            }
        }
    }
    
    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if let v = _keyData {
            try visitor.visitSingularBytesField(value: v, fieldNumber: 1)
        }
        if let v = _transmissionRiskLevel {
            try visitor.visitSingularInt32Field(value: v, fieldNumber: 2)
        }
        if let v = _rollingStartIntervalNumber {
            try visitor.visitSingularInt32Field(value: v, fieldNumber: 3)
        }
        if let v = _rollingPeriod {
            try visitor.visitSingularInt32Field(value: v, fieldNumber: 4)
        }
        try unknownFields.traverse(visitor: &visitor)
    }
    
    static func == (lhs: TemporaryExposureKey, rhs: TemporaryExposureKey) -> Bool {
        if lhs._keyData != rhs._keyData { return false }
        if lhs._transmissionRiskLevel != rhs._transmissionRiskLevel { return false }
        if lhs._rollingStartIntervalNumber != rhs._rollingStartIntervalNumber { return false }
        if lhs._rollingPeriod != rhs._rollingPeriod { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension TEKSignatureList: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = "TEKSignatureList"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "signatures"),
    ]
    
    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            switch fieldNumber {
            case 1: try decoder.decodeRepeatedMessageField(value: &signatures)
            default: break
            }
        }
    }
    
    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !signatures.isEmpty {
            try visitor.visitRepeatedMessageField(value: signatures, fieldNumber: 1)
        }
        try unknownFields.traverse(visitor: &visitor)
    }
    
    static func == (lhs: TEKSignatureList, rhs: TEKSignatureList) -> Bool {
        if lhs.signatures != rhs.signatures { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension TEKSignature: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = "TEKSignature"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "signature_info"),
        2: .standard(proto: "batch_num"),
        3: .standard(proto: "batch_size"),
        4: .same(proto: "signature"),
    ]
    
    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            switch fieldNumber {
            case 1: try decoder.decodeSingularMessageField(value: &_signatureInfo)
            case 2: try decoder.decodeSingularInt32Field(value: &_batchNum)
            case 3: try decoder.decodeSingularInt32Field(value: &_batchSize)
            case 4: try decoder.decodeSingularBytesField(value: &_signature)
            default: break
            }
        }
    }
    
    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if let v = _signatureInfo {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
        }
        if let v = _batchNum {
            try visitor.visitSingularInt32Field(value: v, fieldNumber: 2)
        }
        if let v = _batchSize {
            try visitor.visitSingularInt32Field(value: v, fieldNumber: 3)
        }
        if let v = _signature {
            try visitor.visitSingularBytesField(value: v, fieldNumber: 4)
        }
        try unknownFields.traverse(visitor: &visitor)
    }
    
    static func == (lhs: TEKSignature, rhs: TEKSignature) -> Bool {
        if lhs._signatureInfo != rhs._signatureInfo { return false }
        if lhs._batchNum != rhs._batchNum { return false }
        if lhs._batchSize != rhs._batchSize { return false }
        if lhs._signature != rhs._signature { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}
