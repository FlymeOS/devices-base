.class public abstract Landroid/print/IPrintSpooler$Stub;
.super Landroid/os/Binder;
.source "IPrintSpooler.java"

# interfaces
.implements Landroid/print/IPrintSpooler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintSpooler$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.print.IPrintSpooler"

.field static final TRANSACTION_clearCustomPrinterIconCache:I = 0xb

.field static final TRANSACTION_createPrintJob:I = 0x4

.field static final TRANSACTION_getCustomPrinterIcon:I = 0xa

.field static final TRANSACTION_getPrintJobInfo:I = 0x3

.field static final TRANSACTION_getPrintJobInfos:I = 0x2

.field static final TRANSACTION_onCustomPrinterIconLoaded:I = 0x9

.field static final TRANSACTION_pruneApprovedPrintServices:I = 0x10

.field static final TRANSACTION_removeObsoletePrintJobs:I = 0x1

.field static final TRANSACTION_setClient:I = 0xe

.field static final TRANSACTION_setPrintJobCancelling:I = 0xf

.field static final TRANSACTION_setPrintJobState:I = 0x5

.field static final TRANSACTION_setPrintJobTag:I = 0xc

.field static final TRANSACTION_setProgress:I = 0x6

.field static final TRANSACTION_setStatus:I = 0x7

.field static final TRANSACTION_setStatusRes:I = 0x8

.field static final TRANSACTION_writePrintJobData:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string/jumbo v0, "android.print.IPrintSpooler"

    invoke-virtual {p0, p0, v0}, Landroid/print/IPrintSpooler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpooler;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 30
    if-nez p0, :cond_0

    .line 31
    return-object v1

    .line 33
    :cond_0
    const-string/jumbo v1, "android.print.IPrintSpooler"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/print/IPrintSpooler;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Landroid/print/IPrintSpooler;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/print/IPrintSpooler$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/print/IPrintSpooler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 30
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 311
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 49
    :sswitch_0
    const-string/jumbo v4, "android.print.IPrintSpooler"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    const/4 v4, 0x1

    return v4

    .line 54
    :sswitch_1
    const-string/jumbo v4, "android.print.IPrintSpooler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/print/IPrintSpooler$Stub;->removeObsoletePrintJobs()V

    .line 56
    const/4 v4, 0x1

    return v4

    .line 60
    :sswitch_2
    const-string/jumbo v4, "android.print.IPrintSpooler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v5

    .line 64
    .local v5, "_arg0":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 71
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 73
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 75
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg4":I
    move-object/from16 v4, p0

    .line 76
    invoke-virtual/range {v4 .. v9}, Landroid/print/IPrintSpooler$Stub;->getPrintJobInfos(Landroid/print/IPrintSpoolerCallbacks;Landroid/content/ComponentName;III)V

    .line 77
    const/4 v4, 0x1

    return v4

    .line 68
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    :cond_0
    const/4 v6, 0x0

    .local v6, "_arg1":Landroid/content/ComponentName;
    goto :goto_0

    .line 81
    .end local v5    # "_arg0":Landroid/print/IPrintSpoolerCallbacks;
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    :sswitch_3
    const-string/jumbo v4, "android.print.IPrintSpooler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 84
    sget-object v4, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/print/PrintJobId;

    .line 90
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v23

    .line 92
    .local v23, "_arg1":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 94
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 95
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1, v7, v8}, Landroid/print/IPrintSpooler$Stub;->getPrintJobInfo(Landroid/print/PrintJobId;Landroid/print/IPrintSpoolerCallbacks;II)V

    .line 96
    const/4 v4, 0x1

    return v4

    .line 87
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v23    # "_arg1":Landroid/print/IPrintSpoolerCallbacks;
    :cond_1
    const/4 v11, 0x0

    .local v11, "_arg0":Landroid/print/PrintJobId;
    goto :goto_1

    .line 100
    .end local v11    # "_arg0":Landroid/print/PrintJobId;
    :sswitch_4
    const-string/jumbo v4, "android.print.IPrintSpooler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 103
    sget-object v4, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/print/PrintJobInfo;

    .line 108
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/print/IPrintSpooler$Stub;->createPrintJob(Landroid/print/PrintJobInfo;)V

    .line 109
    const/4 v4, 0x1

    return v4

    .line 106
    :cond_2
    const/16 v18, 0x0

    .local v18, "_arg0":Landroid/print/PrintJobInfo;
    goto :goto_2

    .line 113
    .end local v18    # "_arg0":Landroid/print/PrintJobInfo;
    :sswitch_5
    const-string/jumbo v4, "android.print.IPrintSpooler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 116
    sget-object v4, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/print/PrintJobId;

    .line 122
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 124
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 126
    .local v13, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v14

    .line 128
    .local v14, "_arg3":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    move-object/from16 v10, p0

    move v15, v9

    .line 129
    invoke-virtual/range {v10 .. v15}, Landroid/print/IPrintSpooler$Stub;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 130
    const/4 v4, 0x1

    return v4

    .line 119
    .end local v9    # "_arg4":I
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":Ljava/lang/String;
    .end local v14    # "_arg3":Landroid/print/IPrintSpoolerCallbacks;
    :cond_3
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_3

    .line 134
    .end local v11    # "_arg0":Landroid/print/PrintJobId;
    :sswitch_6
    const-string/jumbo v4, "android.print.IPrintSpooler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 137
    sget-object v4, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/print/PrintJobId;

    .line 143
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v21

    .line 144
    .local v21, "_arg1":F
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Landroid/print/IPrintSpooler$Stub;->setProgress(Landroid/print/PrintJobId;F)V

    .line 145
    const/4 v4, 0x1

    return v4

    .line 140
    .end local v21    # "_arg1":F
    :cond_4
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_4

    .line 149
    .end local v11    # "_arg0":Landroid/print/PrintJobId;
    :sswitch_7
    const-string/jumbo v4, "android.print.IPrintSpooler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 152
    sget-object v4, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/print/PrintJobId;

    .line 158
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 159
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/CharSequence;

    .line 164
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v11, v1}, Landroid/print/IPrintSpooler$Stub;->setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V

    .line 165
    const/4 v4, 0x1

    return v4

    .line 155
    :cond_5
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_5

    .line 162
    .end local v11    # "_arg0":Landroid/print/PrintJobId;
    :cond_6
    const/16 v25, 0x0

    .local v25, "_arg1":Ljava/lang/CharSequence;
    goto :goto_6

    .line 169
    .end local v25    # "_arg1":Ljava/lang/CharSequence;
    :sswitch_8
    const-string/jumbo v4, "android.print.IPrintSpooler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 172
    sget-object v4, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/print/PrintJobId;

    .line 178
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 180
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 181
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/CharSequence;

    .line 186
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v11, v12, v1}, Landroid/print/IPrintSpooler$Stub;->setStatusRes(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V

    .line 187
    const/4 v4, 0x1

    return v4

    .line 175
    .end local v12    # "_arg1":I
    :cond_7
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_7

    .line 184
    .end local v11    # "_arg0":Landroid/print/PrintJobId;
    .restart local v12    # "_arg1":I
    :cond_8
    const/16 v29, 0x0

    .local v29, "_arg2":Ljava/lang/CharSequence;
    goto :goto_8

    .line 191
    .end local v12    # "_arg1":I
    .end local v29    # "_arg2":Ljava/lang/CharSequence;
    :sswitch_9
    const-string/jumbo v4, "android.print.IPrintSpooler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 194
    sget-object v4, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/print/PrinterId;

    .line 200
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 201
    sget-object v4, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/graphics/drawable/Icon;

    .line 207
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v28

    .line 209
    .local v28, "_arg2":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 210
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/print/IPrintSpooler$Stub;->onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 211
    const/4 v4, 0x1

    return v4

    .line 197
    .end local v8    # "_arg3":I
    .end local v28    # "_arg2":Landroid/print/IPrintSpoolerCallbacks;
    :cond_9
    const/16 v19, 0x0

    .local v19, "_arg0":Landroid/print/PrinterId;
    goto :goto_9

    .line 204
    .end local v19    # "_arg0":Landroid/print/PrinterId;
    :cond_a
    const/16 v22, 0x0

    .local v22, "_arg1":Landroid/graphics/drawable/Icon;
    goto :goto_a

    .line 215
    .end local v22    # "_arg1":Landroid/graphics/drawable/Icon;
    :sswitch_a
    const-string/jumbo v4, "android.print.IPrintSpooler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 218
    sget-object v4, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/print/PrinterId;

    .line 224
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v23

    .line 226
    .restart local v23    # "_arg1":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 227
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v7}, Landroid/print/IPrintSpooler$Stub;->getCustomPrinterIcon(Landroid/print/PrinterId;Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 228
    const/4 v4, 0x1

    return v4

    .line 221
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Landroid/print/IPrintSpoolerCallbacks;
    :cond_b
    const/16 v19, 0x0

    .restart local v19    # "_arg0":Landroid/print/PrinterId;
    goto :goto_b

    .line 232
    .end local v19    # "_arg0":Landroid/print/PrinterId;
    :sswitch_b
    const-string/jumbo v4, "android.print.IPrintSpooler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v5

    .line 236
    .restart local v5    # "_arg0":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 237
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Landroid/print/IPrintSpooler$Stub;->clearCustomPrinterIconCache(Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 238
    const/4 v4, 0x1

    return v4

    .line 242
    .end local v5    # "_arg0":Landroid/print/IPrintSpoolerCallbacks;
    .end local v12    # "_arg1":I
    :sswitch_c
    const-string/jumbo v4, "android.print.IPrintSpooler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 245
    sget-object v4, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/print/PrintJobId;

    .line 251
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 253
    .local v26, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v28

    .line 255
    .restart local v28    # "_arg2":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 256
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-virtual {v0, v11, v1, v2, v8}, Landroid/print/IPrintSpooler$Stub;->setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 257
    const/4 v4, 0x1

    return v4

    .line 248
    .end local v8    # "_arg3":I
    .end local v26    # "_arg1":Ljava/lang/String;
    .end local v28    # "_arg2":Landroid/print/IPrintSpoolerCallbacks;
    :cond_c
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_c

    .line 261
    .end local v11    # "_arg0":Landroid/print/PrintJobId;
    :sswitch_d
    const-string/jumbo v4, "android.print.IPrintSpooler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 264
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/ParcelFileDescriptor;

    .line 270
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 271
    sget-object v4, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/print/PrintJobId;

    .line 276
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/print/IPrintSpooler$Stub;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V

    .line 277
    const/4 v4, 0x1

    return v4

    .line 267
    :cond_d
    const/16 v16, 0x0

    .local v16, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_d

    .line 274
    .end local v16    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_e
    const/16 v24, 0x0

    .local v24, "_arg1":Landroid/print/PrintJobId;
    goto :goto_e

    .line 281
    .end local v24    # "_arg1":Landroid/print/PrintJobId;
    :sswitch_e
    const-string/jumbo v4, "android.print.IPrintSpooler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/print/IPrintSpoolerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerClient;

    move-result-object v17

    .line 284
    .local v17, "_arg0":Landroid/print/IPrintSpoolerClient;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/print/IPrintSpooler$Stub;->setClient(Landroid/print/IPrintSpoolerClient;)V

    .line 285
    const/4 v4, 0x1

    return v4

    .line 289
    .end local v17    # "_arg0":Landroid/print/IPrintSpoolerClient;
    :sswitch_f
    const-string/jumbo v4, "android.print.IPrintSpooler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 292
    sget-object v4, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/print/PrintJobId;

    .line 298
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    const/16 v27, 0x1

    .line 299
    .local v27, "_arg1":Z
    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v11, v1}, Landroid/print/IPrintSpooler$Stub;->setPrintJobCancelling(Landroid/print/PrintJobId;Z)V

    .line 300
    const/4 v4, 0x1

    return v4

    .line 295
    .end local v27    # "_arg1":Z
    :cond_f
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_f

    .line 298
    .end local v11    # "_arg0":Landroid/print/PrintJobId;
    :cond_10
    const/16 v27, 0x0

    goto :goto_10

    .line 304
    :sswitch_10
    const-string/jumbo v4, "android.print.IPrintSpooler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v20

    .line 307
    .local v20, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/print/IPrintSpooler$Stub;->pruneApprovedPrintServices(Ljava/util/List;)V

    .line 308
    const/4 v4, 0x1

    return v4

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
