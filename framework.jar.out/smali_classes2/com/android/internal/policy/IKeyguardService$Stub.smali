.class public abstract Lcom/android/internal/policy/IKeyguardService$Stub;
.super Landroid/os/Binder;
.source "IKeyguardService.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IKeyguardService"

.field static final TRANSACTION_addStateMonitorCallback:I = 0x2

.field static final TRANSACTION_dismiss:I = 0x5

.field static final TRANSACTION_doKeyguardTimeout:I = 0xc

.field static final TRANSACTION_keyguardDone:I = 0x4

.field static final TRANSACTION_onActivityDrawn:I = 0x10

.field static final TRANSACTION_onBootCompleted:I = 0xe

.field static final TRANSACTION_onDreamingStarted:I = 0x6

.field static final TRANSACTION_onDreamingStopped:I = 0x7

.field static final TRANSACTION_onScreenTurnedOff:I = 0x8

.field static final TRANSACTION_onScreenTurnedOn:I = 0x9

.field static final TRANSACTION_onSystemReady:I = 0xb

.field static final TRANSACTION_setCurrentUser:I = 0xd

.field static final TRANSACTION_setKeyguardEnabled:I = 0xa

.field static final TRANSACTION_setOccluded:I = 0x1

.field static final TRANSACTION_startKeyguardExitAnimation:I = 0xf

.field static final TRANSACTION_verifyUnlock:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.android.internal.policy.IKeyguardService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/policy/IKeyguardService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/internal/policy/IKeyguardService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    move v0, v4

    .line 50
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->setOccluded(Z)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_0
    move v0, v5

    .line 49
    goto :goto_1

    .line 55
    :sswitch_2
    const-string v5, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardStateCallback;

    move-result-object v0

    .line 58
    .local v0, "_arg0":Lcom/android/internal/policy/IKeyguardStateCallback;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":Lcom/android/internal/policy/IKeyguardStateCallback;
    :sswitch_3
    const-string v5, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardExitCallback;

    move-result-object v0

    .line 66
    .local v0, "_arg0":Lcom/android/internal/policy/IKeyguardExitCallback;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    goto :goto_0

    .line 71
    .end local v0    # "_arg0":Lcom/android/internal/policy/IKeyguardExitCallback;
    :sswitch_4
    const-string v6, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v0, v4

    .line 75
    .local v0, "_arg0":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    move v2, v4

    .line 76
    .local v2, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->keyguardDone(ZZ)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v2    # "_arg1":Z
    :cond_1
    move v0, v5

    .line 73
    goto :goto_2

    .restart local v0    # "_arg0":Z
    :cond_2
    move v2, v5

    .line 75
    goto :goto_3

    .line 81
    .end local v0    # "_arg0":Z
    :sswitch_5
    const-string v5, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->dismiss()V

    goto :goto_0

    .line 87
    :sswitch_6
    const-string v5, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStarted()V

    goto :goto_0

    .line 93
    :sswitch_7
    const-string v5, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStopped()V

    goto :goto_0

    .line 99
    :sswitch_8
    const-string v5, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOff(I)V

    goto :goto_0

    .line 107
    .end local v0    # "_arg0":I
    :sswitch_9
    const-string v5, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/policy/IKeyguardShowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardShowCallback;

    move-result-object v0

    .line 110
    .local v0, "_arg0":Lcom/android/internal/policy/IKeyguardShowCallback;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    goto/16 :goto_0

    .line 115
    .end local v0    # "_arg0":Lcom/android/internal/policy/IKeyguardShowCallback;
    :sswitch_a
    const-string v6, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    move v0, v4

    .line 118
    .local v0, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->setKeyguardEnabled(Z)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_3
    move v0, v5

    .line 117
    goto :goto_4

    .line 123
    :sswitch_b
    const-string v5, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onSystemReady()V

    goto/16 :goto_0

    .line 129
    :sswitch_c
    const-string v5, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 132
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 137
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->doKeyguardTimeout(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 135
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_5

    .line 142
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_d
    const-string v5, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 145
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->setCurrentUser(I)V

    goto/16 :goto_0

    .line 150
    .end local v0    # "_arg0":I
    :sswitch_e
    const-string v5, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onBootCompleted()V

    goto/16 :goto_0

    .line 156
    :sswitch_f
    const-string v5, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 160
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 161
    .local v2, "_arg1":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->startKeyguardExitAnimation(JJ)V

    goto/16 :goto_0

    .line 166
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":J
    :sswitch_10
    const-string v5, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onActivityDrawn()V

    goto/16 :goto_0

    .line 38
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
