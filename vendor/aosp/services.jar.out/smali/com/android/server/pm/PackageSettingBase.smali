.class abstract Lcom/android/server/pm/PackageSettingBase;
.super Lcom/android/server/pm/SettingBase;
.source "PackageSettingBase.java"


# static fields
.field private static final DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

.field static final PKG_INSTALL_COMPLETE:I = 0x1

.field static final PKG_INSTALL_INCOMPLETE:I


# instance fields
.field codePath:Ljava/io/File;

.field codePathString:Ljava/lang/String;

.field cpuAbiOverrideString:Ljava/lang/String;

.field firstInstallTime:J

.field frozen:Z

.field installPermissionsFixed:Z

.field installStatus:I

.field installerPackageName:Ljava/lang/String;

.field keySetData:Lcom/android/server/pm/PackageKeySetData;

.field lastUpdateTime:J

.field legacyNativeLibraryPathString:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final name:Ljava/lang/String;

.field origPackage:Lcom/android/server/pm/PackageSettingBase;

.field primaryCpuAbiString:Ljava/lang/String;

.field final realName:Ljava/lang/String;

.field resourcePath:Ljava/io/File;

.field resourcePathString:Ljava/lang/String;

.field secondaryCpuAbiString:Ljava/lang/String;

.field signatures:Lcom/android/server/pm/PackageSignatures;

.field timeStamp:J

.field uidError:Z

.field private final userState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/PackageUserState;",
            ">;"
        }
    .end annotation
.end field

.field verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

.field versionCode:I

.field volumeUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Landroid/content/pm/PackageUserState;

    invoke-direct {v0}, Landroid/content/pm/PackageUserState;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    .line 35
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageSettingBase;)V
    .locals 5
    .param p1, "base"    # Lcom/android/server/pm/PackageSettingBase;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;-><init>(Lcom/android/server/pm/SettingBase;)V

    .line 96
    new-instance v1, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v1}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 100
    new-instance v1, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v1}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 106
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    .line 108
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 115
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/PackageSettingBase;->frozen:Z

    .line 144
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    .line 145
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    .line 146
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 147
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 148
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 149
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 150
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 151
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    .line 152
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    .line 153
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    .line 154
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 155
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 156
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    .line 157
    iget v1, p1, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    iput v1, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    .line 159
    iget-boolean v1, p1, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    iput-boolean v1, p0, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    .line 161
    new-instance v1, Lcom/android/server/pm/PackageSignatures;

    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageSignatures;-><init>(Lcom/android/server/pm/PackageSignatures;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 163
    iget-boolean v1, p1, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    iput-boolean v1, p0, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    .line 164
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 166
    iget-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 167
    new-instance v4, Landroid/content/pm/PackageUserState;

    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageUserState;

    invoke-direct {v4, v1}, Landroid/content/pm/PackageUserState;-><init>(Landroid/content/pm/PackageUserState;)V

    .line 166
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    iget v1, p1, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    iput v1, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 171
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->origPackage:Lcom/android/server/pm/PackageSettingBase;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->origPackage:Lcom/android/server/pm/PackageSettingBase;

    .line 173
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 174
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    .line 176
    new-instance v1, Lcom/android/server/pm/PackageKeySetData;

    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageKeySetData;-><init>(Lcom/android/server/pm/PackageKeySetData;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 141
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "resourcePath"    # Ljava/io/File;
    .param p5, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p6, "primaryCpuAbiString"    # Ljava/lang/String;
    .param p7, "secondaryCpuAbiString"    # Ljava/lang/String;
    .param p8, "cpuAbiOverrideString"    # Ljava/lang/String;
    .param p9, "pVersionCode"    # I
    .param p10, "pkgFlags"    # I
    .param p11, "pkgPrivateFlags"    # I

    .prologue
    .line 130
    move/from16 v0, p10

    move/from16 v1, p11

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    .line 96
    new-instance v2, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v2}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 100
    new-instance v2, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v2}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 106
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    .line 108
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 115
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/pm/PackageSettingBase;->frozen:Z

    .line 131
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    .line 133
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/PackageSettingBase;->init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    return-void
.end method

.method private modifyUserState(I)Landroid/content/pm/PackageUserState;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageUserState;

    .line 247
    .local v0, "state":Landroid/content/pm/PackageUserState;
    if-nez v0, :cond_0

    .line 248
    new-instance v0, Landroid/content/pm/PackageUserState;

    .end local v0    # "state":Landroid/content/pm/PackageUserState;
    invoke-direct {v0}, Landroid/content/pm/PackageUserState;-><init>()V

    .line 249
    .restart local v0    # "state":Landroid/content/pm/PackageUserState;
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 251
    :cond_0
    return-object v0
.end method


# virtual methods
.method addDisabledComponent(Ljava/lang/String;I)V
    .locals 2
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 400
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 399
    return-void
.end method

.method addEnabledComponent(Ljava/lang/String;I)V
    .locals 2
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 404
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 403
    return-void
.end method

.method clearDomainVerificationStatusForUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 476
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 477
    const/4 v1, 0x0

    .line 476
    iput v1, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 475
    return-void
.end method

.method public copyFrom(Lcom/android/server/pm/PackageSettingBase;)V
    .locals 4
    .param p1, "base"    # Lcom/android/server/pm/PackageSettingBase;

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->mPermissionsState:Lcom/android/server/pm/PermissionsState;

    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->mPermissionsState:Lcom/android/server/pm/PermissionsState;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PermissionsState;->copyFrom(Lcom/android/server/pm/PermissionsState;)V

    .line 226
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    .line 227
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    .line 228
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    .line 229
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 230
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 231
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    .line 232
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 233
    iget-boolean v1, p1, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    iput-boolean v1, p0, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    .line 234
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 236
    iget-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageUserState;

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_0
    iget v1, p1, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    iput v1, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 239
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 240
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    .line 241
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 242
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    .line 224
    return-void
.end method

.method disableComponentLPw(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 416
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p2, v2, v3}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 417
    .local v1, "state":Landroid/content/pm/PackageUserState;
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_0

    .line 418
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 419
    :goto_0
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 420
    .local v0, "changed":Z
    return v0

    .line 418
    .end local v0    # "changed":Z
    :cond_0
    const/4 v0, 0x0

    .local v0, "changed":Z
    goto :goto_0
.end method

.method enableComponentLPw(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 408
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, p2, v2, v3}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 409
    .local v1, "state":Landroid/content/pm/PackageUserState;
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_0

    .line 410
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 411
    :goto_0
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 412
    .local v0, "changed":Z
    return v0

    .line 410
    .end local v0    # "changed":Z
    :cond_0
    const/4 v0, 0x0

    .local v0, "changed":Z
    goto :goto_0
.end method

.method getBlockUninstall(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 336
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    return v0
.end method

.method getCurrentEnabledStateLPr(Ljava/lang/String;I)I
    .locals 2
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 433
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 434
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    const/4 v1, 0x1

    return v1

    .line 436
    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v1, :cond_1

    .line 437
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 436
    if-eqz v1, :cond_1

    .line 438
    const/4 v1, 0x2

    return v1

    .line 440
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method getDisabledComponents(I)Landroid/util/ArraySet;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    return-object v0
.end method

.method getDomainVerificationStatusForUser(I)J
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 461
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v2

    .line 462
    .local v2, "state":Landroid/content/pm/PackageUserState;
    iget v3, v2, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    int-to-long v0, v3

    .line 463
    .local v0, "result":J
    iget v3, v2, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    int-to-long v4, v3

    const/16 v3, 0x20

    shl-long/2addr v4, v3

    or-long/2addr v0, v4

    .line 464
    return-wide v0
.end method

.method getEnabled(I)I
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageUserState;->enabled:I

    return v0
.end method

.method getEnabledComponents(I)Landroid/util/ArraySet;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    return-object v0
.end method

.method getHidden(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    return v0
.end method

.method public getInstallStatus()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    return v0
.end method

.method getInstalled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->installed:Z

    return v0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    return-object v0
.end method

.method getLastDisabledAppCaller(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    return-object v0
.end method

.method getNotLaunched(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    return v0
.end method

.method getStopped(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    return v0
.end method

.method public getVolumeUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    return-object v0
.end method

.method init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "codePath"    # Ljava/io/File;
    .param p2, "resourcePath"    # Ljava/io/File;
    .param p3, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p4, "primaryCpuAbiString"    # Ljava/lang/String;
    .param p5, "secondaryCpuAbiString"    # Ljava/lang/String;
    .param p6, "cpuAbiOverrideString"    # Ljava/lang/String;
    .param p7, "pVersionCode"    # I

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 183
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 184
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 185
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 186
    iput-object p3, p0, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 187
    iput-object p4, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    .line 188
    iput-object p5, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    .line 189
    iput-object p6, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    .line 190
    iput p7, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    .line 181
    return-void
.end method

.method isAnyInstalled([I)Z
    .locals 5
    .param p1, "users"    # [I

    .prologue
    const/4 v2, 0x0

    .line 285
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget v0, p1, v1

    .line 286
    .local v0, "user":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v4

    iget-boolean v4, v4, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v4, :cond_0

    .line 287
    const/4 v1, 0x1

    return v1

    .line 285
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    .end local v0    # "user":I
    :cond_1
    return v2
.end method

.method modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "disabled"    # Z
    .param p3, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    .line 389
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 390
    .local v0, "state":Landroid/content/pm/PackageUserState;
    if-eqz p2, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-nez v1, :cond_0

    .line 391
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 393
    :cond_0
    if-eqz p3, :cond_1

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-nez v1, :cond_1

    .line 394
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 396
    :cond_1
    return-object v0
.end method

.method queryInstalledUsers([IZ)[I
    .locals 7
    .param p1, "users"    # [I
    .param p2, "installed"    # Z

    .prologue
    const/4 v3, 0x0

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "num":I
    array-length v5, p1

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget v2, p1, v4

    .line 296
    .local v2, "user":I
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageSettingBase;->getInstalled(I)Z

    move-result v6

    if-ne v6, p2, :cond_0

    .line 297
    add-int/lit8 v0, v0, 0x1

    .line 295
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 300
    .end local v2    # "user":I
    :cond_1
    new-array v1, v0, [I

    .line 301
    .local v1, "res":[I
    const/4 v0, 0x0

    .line 302
    array-length v4, p1

    :goto_1
    if-ge v3, v4, :cond_3

    aget v2, p1, v3

    .line 303
    .restart local v2    # "user":I
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageSettingBase;->getInstalled(I)Z

    move-result v5

    if-ne v5, p2, :cond_2

    .line 304
    aput v2, v1, v0

    .line 305
    add-int/lit8 v0, v0, 0x1

    .line 302
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 308
    .end local v2    # "user":I
    :cond_3
    return-object v1
.end method

.method public readUserState(I)Landroid/content/pm/PackageUserState;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 255
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageUserState;

    .line 256
    .local v0, "state":Landroid/content/pm/PackageUserState;
    if-eqz v0, :cond_0

    .line 257
    return-object v0

    .line 259
    :cond_0
    sget-object v1, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    return-object v1
.end method

.method removeUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 444
    return-void
.end method

.method restoreComponentLPw(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x1

    .line 424
    invoke-virtual {p0, p2, v2, v2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 425
    .local v1, "state":Landroid/content/pm/PackageUserState;
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_0

    .line 426
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 427
    :goto_0
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_1

    .line 428
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 427
    :goto_1
    or-int/2addr v0, v2

    .line 429
    .local v0, "changed":Z
    return v0

    .line 426
    .end local v0    # "changed":Z
    :cond_0
    const/4 v0, 0x0

    .local v0, "changed":Z
    goto :goto_0

    .line 428
    .end local v0    # "changed":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method setBlockUninstall(ZI)V
    .locals 1
    .param p1, "blockUninstall"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 340
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    .line 339
    return-void
.end method

.method setDisabledComponents(Landroid/util/ArraySet;I)V
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-object p1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 374
    return-void
.end method

.method setDisabledComponentsCopy(Landroid/util/ArraySet;I)V
    .locals 2
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 384
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 385
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 384
    :cond_0
    iput-object v0, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 383
    return-void
.end method

.method setDomainVerificationStatusForUser(III)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "generation"    # I
    .param p3, "userId"    # I

    .prologue
    .line 468
    invoke-direct {p0, p3}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 469
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iput p1, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 470
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 471
    iput p2, v0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    .line 467
    :cond_0
    return-void
.end method

.method setEnabled(IILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 264
    .local v0, "st":Landroid/content/pm/PackageUserState;
    iput p1, v0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 265
    iput-object p3, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 262
    return-void
.end method

.method setEnabledComponents(Landroid/util/ArraySet;I)V
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-object p1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 370
    return-void
.end method

.method setEnabledComponentsCopy(Landroid/util/ArraySet;I)V
    .locals 2
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 379
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 380
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 379
    :cond_0
    iput-object v0, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 378
    return-void
.end method

.method setHidden(ZI)V
    .locals 1
    .param p1, "hidden"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 332
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 331
    return-void
.end method

.method public setInstallStatus(I)V
    .locals 0
    .param p1, "newStatus"    # I

    .prologue
    .line 210
    iput p1, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 209
    return-void
.end method

.method setInstalled(ZI)V
    .locals 1
    .param p1, "inst"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 277
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 276
    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 193
    return-void
.end method

.method setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/content/pm/IntentFilterVerificationInfo;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    .line 452
    return-void
.end method

.method setNotLaunched(ZI)V
    .locals 1
    .param p1, "stop"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 324
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 323
    return-void
.end method

.method setStopped(ZI)V
    .locals 1
    .param p1, "stop"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 316
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 315
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1
    .param p1, "newStamp"    # J

    .prologue
    .line 218
    iput-wide p1, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 217
    return-void
.end method

.method setUserState(IIZZZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;ZII)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "enabled"    # I
    .param p3, "installed"    # Z
    .param p4, "stopped"    # Z
    .param p5, "notLaunched"    # Z
    .param p6, "hidden"    # Z
    .param p7, "lastDisableAppCaller"    # Ljava/lang/String;
    .param p10, "blockUninstall"    # Z
    .param p11, "domainVerifState"    # I
    .param p12, "linkGeneration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZZZ",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;ZII)V"
        }
    .end annotation

    .prologue
    .line 348
    .local p8, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p9, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 349
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iput p2, v0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 350
    iput-boolean p3, v0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 351
    iput-boolean p4, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 352
    iput-boolean p5, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 353
    iput-boolean p6, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 354
    iput-object p7, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 355
    iput-object p8, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 356
    iput-object p9, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 357
    iput-boolean p10, v0, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    .line 358
    iput p11, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 359
    iput p12, v0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    .line 347
    return-void
.end method

.method public setVolumeUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    .line 201
    return-void
.end method
