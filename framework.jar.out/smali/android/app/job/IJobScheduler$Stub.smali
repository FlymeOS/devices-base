.class public abstract Landroid/app/job/IJobScheduler$Stub;
.super Landroid/os/Binder;
.source "IJobScheduler.java"

# interfaces
.implements Landroid/app/job/IJobScheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/IJobScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/IJobScheduler$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.job.IJobScheduler"

.field static final TRANSACTION_cancel:I = 0x3

.field static final TRANSACTION_cancelAll:I = 0x4

.field static final TRANSACTION_getAllPendingJobs:I = 0x5

.field static final TRANSACTION_getPendingJob:I = 0x6

.field static final TRANSACTION_schedule:I = 0x1

.field static final TRANSACTION_scheduleAsPackage:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "android.app.job.IJobScheduler"

    invoke-virtual {p0, p0, v0}, Landroid/app/job/IJobScheduler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobScheduler;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "android.app.job.IJobScheduler"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/job/IJobScheduler;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/app/job/IJobScheduler;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/job/IJobScheduler$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/job/IJobScheduler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    .line 46
    :sswitch_0
    const-string/jumbo v8, "android.app.job.IJobScheduler"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v9

    .line 51
    :sswitch_1
    const-string/jumbo v8, "android.app.job.IJobScheduler"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    .line 54
    sget-object v8, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    .line 59
    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/job/IJobScheduler$Stub;->schedule(Landroid/app/job/JobInfo;)I

    move-result v5

    .line 60
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return v9

    .line 57
    .end local v5    # "_result":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/app/job/JobInfo;
    goto :goto_0

    .line 66
    .end local v1    # "_arg0":Landroid/app/job/JobInfo;
    :sswitch_2
    const-string/jumbo v8, "android.app.job.IJobScheduler"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    .line 69
    sget-object v8, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    .line 75
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 79
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/job/IJobScheduler$Stub;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    .line 81
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return v9

    .line 72
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/app/job/JobInfo;
    goto :goto_1

    .line 87
    .end local v1    # "_arg0":Landroid/app/job/JobInfo;
    :sswitch_3
    const-string/jumbo v8, "android.app.job.IJobScheduler"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 90
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/job/IJobScheduler$Stub;->cancel(I)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    return v9

    .line 96
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string/jumbo v8, "android.app.job.IJobScheduler"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Landroid/app/job/IJobScheduler$Stub;->cancelAll()V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    return v9

    .line 103
    :sswitch_5
    const-string/jumbo v8, "android.app.job.IJobScheduler"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Landroid/app/job/IJobScheduler$Stub;->getAllPendingJobs()Ljava/util/List;

    move-result-object v7

    .line 105
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 107
    return v9

    .line 111
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    :sswitch_6
    const-string/jumbo v8, "android.app.job.IJobScheduler"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 114
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/job/IJobScheduler$Stub;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v6

    .line 115
    .local v6, "_result":Landroid/app/job/JobInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v6, :cond_2

    .line 117
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    invoke-virtual {v6, p3, v9}, Landroid/app/job/JobInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 123
    :goto_2
    return v9

    .line 121
    :cond_2
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
