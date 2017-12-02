.class public final Landroid/nfc/cardemulation/NfcFServiceInfo;
.super Ljava/lang/Object;
.source "NfcFServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/NfcFServiceInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "NfcFServiceInfo"


# instance fields
.field final mDescription:Ljava/lang/String;

.field mDynamicNfcid2:Ljava/lang/String;

.field mDynamicSystemCode:Ljava/lang/String;

.field final mNfcid2:Ljava/lang/String;

.field final mService:Landroid/content/pm/ResolveInfo;

.field final mSystemCode:Ljava/lang/String;

.field final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 270
    new-instance v0, Landroid/nfc/cardemulation/NfcFServiceInfo$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo$1;-><init>()V

    .line 269
    sput-object v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V
    .locals 17
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 100
    .local v11, "si":Landroid/content/pm/ServiceInfo;
    const/4 v8, 0x0

    .line 102
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string/jumbo v14, "android.nfc.cardemulation.host_nfcf_service"

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v14}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 103
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v8, :cond_1

    .line 104
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v15, "No android.nfc.cardemulation.host_nfcf_service meta-data"

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v5

    .line 168
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Unable to create context for: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v14

    .line 170
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 169
    :cond_0
    throw v14

    .line 108
    .restart local v8    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_1
    :try_start_2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    .line 109
    .local v6, "eventType":I
    :goto_0
    const/4 v14, 0x2

    if-eq v6, v14, :cond_2

    .line 110
    const/4 v14, 0x1

    if-eq v6, v14, :cond_2

    .line 111
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    goto :goto_0

    .line 114
    :cond_2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 115
    .local v13, "tagName":Ljava/lang/String;
    const-string/jumbo v14, "host-nfcf-service"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 116
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    .line 117
    const-string/jumbo v15, "Meta-data does not start with <host-nfcf-service> tag"

    .line 116
    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 120
    :cond_3
    iget-object v14, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9

    .line 121
    .local v9, "res":Landroid/content/res/Resources;
    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 123
    .local v3, "attrs":Landroid/util/AttributeSet;
    sget-object v14, Lcom/android/internal/R$styleable;->HostNfcFService:[I

    .line 122
    invoke-virtual {v9, v3, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 124
    .local v10, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 126
    const/4 v14, 0x0

    .line 125
    invoke-virtual {v10, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDescription:Ljava/lang/String;

    .line 127
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    .line 128
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    .line 129
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    const/4 v12, 0x0

    .line 132
    .local v12, "systemCode":Ljava/lang/String;
    const/4 v7, 0x0

    .line 133
    .local v7, "nfcid2":Ljava/lang/String;
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 135
    .end local v7    # "nfcid2":Ljava/lang/String;
    .end local v12    # "systemCode":Ljava/lang/String;
    .local v4, "depth":I
    :cond_4
    :goto_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    const/4 v14, 0x3

    if-ne v6, v14, :cond_5

    .line 136
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    if-le v14, v4, :cond_b

    :cond_5
    const/4 v14, 0x1

    if-eq v6, v14, :cond_b

    .line 137
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 138
    const/4 v14, 0x2

    if-ne v6, v14, :cond_8

    .line 139
    const-string/jumbo v14, "system-code-filter"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 138
    if-eqz v14, :cond_8

    .line 139
    if-nez v12, :cond_8

    .line 141
    sget-object v14, Lcom/android/internal/R$styleable;->SystemCodeFilter:[I

    .line 140
    invoke-virtual {v9, v3, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 143
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    .line 142
    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    .line 144
    .local v12, "systemCode":Ljava/lang/String;
    invoke-static {v12}, Landroid/nfc/cardemulation/NfcFCardEmulation;->isValidSystemCode(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 145
    const-string/jumbo v14, "NULL"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 149
    .end local v12    # "systemCode":Ljava/lang/String;
    :cond_6
    :goto_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 146
    .restart local v12    # "systemCode":Ljava/lang/String;
    :cond_7
    const-string/jumbo v14, "NfcFServiceInfo"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Invalid System Code: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v12, 0x0

    .local v12, "systemCode":Ljava/lang/String;
    goto :goto_2

    .line 150
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local v12    # "systemCode":Ljava/lang/String;
    :cond_8
    const/4 v14, 0x2

    if-ne v6, v14, :cond_4

    .line 151
    const-string/jumbo v14, "nfcid2-filter"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 150
    if-eqz v14, :cond_4

    .line 151
    if-nez v7, :cond_4

    .line 153
    sget-object v14, Lcom/android/internal/R$styleable;->Nfcid2Filter:[I

    .line 152
    invoke-virtual {v9, v3, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 155
    .restart local v2    # "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    .line 154
    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 156
    .local v7, "nfcid2":Ljava/lang/String;
    const-string/jumbo v14, "RANDOM"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 157
    const-string/jumbo v14, "NULL"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 162
    .end local v7    # "nfcid2":Ljava/lang/String;
    :cond_9
    :goto_3
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    .line 158
    .restart local v7    # "nfcid2":Ljava/lang/String;
    :cond_a
    invoke-static {v7}, Landroid/nfc/cardemulation/NfcFCardEmulation;->isValidNfcid2(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 159
    const-string/jumbo v14, "NfcFServiceInfo"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Invalid NFCID2: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v7, 0x0

    .local v7, "nfcid2":Ljava/lang/String;
    goto :goto_3

    .line 165
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "nfcid2":Ljava/lang/String;
    :cond_b
    if-nez v12, :cond_c

    const-string/jumbo v12, "NULL"

    :cond_c
    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    .line 166
    if-nez v7, :cond_d

    const-string/jumbo v7, "NULL"

    :cond_d
    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    if-eqz v8, :cond_e

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 173
    :cond_e
    iget-object v14, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mUid:I

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "systemCode"    # Ljava/lang/String;
    .param p4, "dynamicSystemCode"    # Ljava/lang/String;
    .param p5, "nfcid2"    # Ljava/lang/String;
    .param p6, "dynamicNfcid2"    # Ljava/lang/String;
    .param p7, "uid"    # I

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 89
    iput-object p2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDescription:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    .line 92
    iput-object p5, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    .line 93
    iput-object p6, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    .line 94
    iput p7, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mUid:I

    .line 87
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 299
    const-string/jumbo v1, " (Description: "

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 299
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 299
    const-string/jumbo v1, ")"

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    System Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getSystemCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    NFCID2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 231
    if-ne p0, p1, :cond_0

    return v4

    .line 232
    :cond_0
    instance-of v1, p1, Landroid/nfc/cardemulation/NfcFServiceInfo;

    if-nez v1, :cond_1

    return v3

    :cond_1
    move-object v0, p1

    .line 233
    check-cast v0, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 235
    .local v0, "thatService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    .line 236
    :cond_2
    iget-object v1, v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 237
    :cond_3
    iget-object v1, v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 239
    :cond_4
    return v4
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 177
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 178
    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 177
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getNfcid2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSystemCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mUid:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    return v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 210
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 206
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public setOrReplaceDynamicNfcid2(Ljava/lang/String;)V
    .locals 0
    .param p1, "nfcid2"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setOrReplaceDynamicSystemCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemCode"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "NfcFService: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    const-string/jumbo v1, ", description: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string/jumbo v1, ", System Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 220
    const-string/jumbo v1, ", dynamic System Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_0
    const-string/jumbo v1, ", NFCID2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 224
    const-string/jumbo v1, ", dynamic NFCID2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 255
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    :cond_0
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    :cond_1
    iget v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    return-void

    :cond_2
    move v0, v2

    .line 257
    goto :goto_0

    :cond_3
    move v1, v2

    .line 262
    goto :goto_1
.end method
