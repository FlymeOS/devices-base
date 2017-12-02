.class final Landroid/net/wifi/ScanResult$1;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/ScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult;
    .locals 28
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 575
    const/4 v5, 0x0

    .line 576
    .local v5, "wifiSsid":Landroid/net/wifi/WifiSsid;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 577
    sget-object v6, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    check-cast v5, Landroid/net/wifi/WifiSsid;

    .line 579
    :cond_0
    new-instance v4, Landroid/net/wifi/ScanResult;

    .line 581
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 582
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 583
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 584
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 585
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 586
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 587
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 588
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 589
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 590
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 591
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 592
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 593
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 594
    const/16 v21, 0x0

    .line 579
    invoke-direct/range {v4 .. v21}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V

    .line 598
    .local v4, "sr":Landroid/net/wifi/ScanResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v4, Landroid/net/wifi/ScanResult;->seen:J

    .line 599
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, v4, Landroid/net/wifi/ScanResult;->untrusted:Z

    .line 600
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v4, Landroid/net/wifi/ScanResult;->numConnection:I

    .line 601
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v4, Landroid/net/wifi/ScanResult;->numUsage:I

    .line 602
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v4, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    .line 603
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v4, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    .line 604
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    .line 605
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    .line 606
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v4, Landroid/net/wifi/ScanResult;->flags:J

    .line 607
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 608
    .local v25, "n":I
    if-eqz v25, :cond_2

    .line 609
    move/from16 v0, v25

    new-array v6, v0, [Landroid/net/wifi/ScanResult$InformationElement;

    iput-object v6, v4, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 610
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    .line 611
    iget-object v6, v4, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    new-instance v7, Landroid/net/wifi/ScanResult$InformationElement;

    invoke-direct {v7}, Landroid/net/wifi/ScanResult$InformationElement;-><init>()V

    aput-object v7, v6, v23

    .line 612
    iget-object v6, v4, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v6, v6, v23

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 613
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 614
    .local v24, "len":I
    iget-object v6, v4, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v6, v6, v23

    move/from16 v0, v24

    new-array v7, v0, [B

    iput-object v7, v6, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 615
    iget-object v6, v4, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v6, v6, v23

    iget-object v6, v6, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->readByteArray([B)V

    .line 610
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 599
    .end local v23    # "i":I
    .end local v24    # "len":I
    .end local v25    # "n":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 619
    .restart local v25    # "n":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 620
    if-eqz v25, :cond_3

    .line 621
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v4, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    .line 622
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_2
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    .line 623
    iget-object v6, v4, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 626
    .end local v23    # "i":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 627
    if-eqz v25, :cond_4

    .line 628
    move/from16 v0, v25

    new-array v6, v0, [Landroid/net/wifi/AnqpInformationElement;

    iput-object v6, v4, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    .line 629
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_3
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    .line 630
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 631
    .local v27, "vendorId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 632
    .local v22, "elementId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 633
    .restart local v24    # "len":I
    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v26, v0

    .line 634
    .local v26, "payload":[B
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 635
    iget-object v6, v4, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    .line 636
    new-instance v7, Landroid/net/wifi/AnqpInformationElement;

    move/from16 v0, v27

    move/from16 v1, v22

    move-object/from16 v2, v26

    invoke-direct {v7, v0, v1, v2}, Landroid/net/wifi/AnqpInformationElement;-><init>(II[B)V

    .line 635
    aput-object v7, v6, v23

    .line 629
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 639
    .end local v22    # "elementId":I
    .end local v23    # "i":I
    .end local v24    # "len":I
    .end local v26    # "payload":[B
    .end local v27    # "vendorId":I
    :cond_4
    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 574
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/ScanResult;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 643
    new-array v0, p1, [Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 642
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$1;->newArray(I)[Landroid/net/wifi/ScanResult;

    move-result-object v0

    return-object v0
.end method
