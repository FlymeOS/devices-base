.class public abstract Landroid/app/ApplicationThreadNative;
.super Landroid/os/Binder;
.source "ApplicationThreadNative.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    const-string/jumbo v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/ApplicationThreadNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 58
    if-nez p0, :cond_0

    .line 59
    return-object v1

    .line 62
    :cond_0
    const-string/jumbo v1, "android.app.IApplicationThread"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IApplicationThread;

    .line 63
    .local v0, "in":Landroid/app/IApplicationThread;
    if-eqz v0, :cond_1

    .line 64
    return-object v0

    .line 67
    :cond_1
    new-instance v1, Landroid/app/ApplicationThreadProxy;

    invoke-direct {v1, p0}, Landroid/app/ApplicationThreadProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 761
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 129
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
    .line 77
    packed-switch p1, :pswitch_data_0

    .line 756
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 80
    :pswitch_1
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 82
    .local v6, "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v7, 0x1

    .line 83
    .local v7, "finished":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v8, 0x1

    .line 84
    .local v8, "userLeaving":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 85
    .local v9, "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v10, 0x1

    .local v10, "dontReport":Z
    :goto_2
    move-object/from16 v5, p0

    .line 86
    invoke-virtual/range {v5 .. v10}, Landroid/app/ApplicationThreadNative;->schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V

    .line 87
    const/4 v5, 0x1

    return v5

    .line 82
    .end local v7    # "finished":Z
    .end local v8    # "userLeaving":Z
    .end local v9    # "configChanges":I
    .end local v10    # "dontReport":Z
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "finished":Z
    goto :goto_0

    .line 83
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "userLeaving":Z
    goto :goto_1

    .line 85
    .restart local v9    # "configChanges":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 92
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v7    # "finished":Z
    .end local v8    # "userLeaving":Z
    .end local v9    # "configChanges":I
    :pswitch_2
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 94
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v124, 0x1

    .line 95
    .local v124, "show":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 96
    .restart local v9    # "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v124

    invoke-virtual {v0, v6, v1, v9}, Landroid/app/ApplicationThreadNative;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 97
    const/4 v5, 0x1

    return v5

    .line 94
    .end local v9    # "configChanges":I
    .end local v124    # "show":Z
    :cond_3
    const/16 v124, 0x0

    .restart local v124    # "show":Z
    goto :goto_3

    .line 102
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v124    # "show":Z
    :pswitch_3
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 104
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/16 v124, 0x1

    .line 105
    .local v124, "show":Z
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v124

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 106
    const/4 v5, 0x1

    return v5

    .line 104
    .end local v124    # "show":Z
    :cond_4
    const/16 v124, 0x0

    goto :goto_4

    .line 111
    .end local v6    # "b":Landroid/os/IBinder;
    :pswitch_4
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 113
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/16 v125, 0x1

    .line 114
    .local v125, "sleeping":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v125

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleSleeping(Landroid/os/IBinder;Z)V

    .line 115
    const/4 v5, 0x1

    return v5

    .line 113
    .end local v125    # "sleeping":Z
    :cond_5
    const/16 v125, 0x0

    goto :goto_5

    .line 120
    .end local v6    # "b":Landroid/os/IBinder;
    :pswitch_5
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 122
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 123
    .local v21, "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    const/16 v27, 0x1

    .line 124
    .local v27, "isForward":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v120

    .line 125
    .local v120, "resumeArgs":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v27

    move-object/from16 v3, v120

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V

    .line 126
    const/4 v5, 0x1

    return v5

    .line 123
    .end local v27    # "isForward":Z
    .end local v120    # "resumeArgs":Landroid/os/Bundle;
    :cond_6
    const/16 v27, 0x0

    .restart local v27    # "isForward":Z
    goto :goto_6

    .line 131
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v21    # "procState":I
    .end local v27    # "isForward":Z
    :pswitch_6
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 133
    .restart local v6    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v24

    .line 134
    .local v24, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 135
    const/4 v5, 0x1

    return v5

    .line 140
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    :pswitch_7
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 142
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 143
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 144
    .local v14, "ident":I
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ActivityInfo;

    .line 145
    .local v15, "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/res/Configuration;

    .line 146
    .local v16, "curConfig":Landroid/content/res/Configuration;
    const/16 v17, 0x0

    .line 147
    .local v17, "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 148
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v17, Landroid/content/res/Configuration;

    .line 150
    :cond_7
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 151
    .local v18, "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 153
    .local v19, "referrer":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 152
    invoke-static {v5}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v20

    .line 154
    .local v20, "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 155
    .restart local v21    # "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v22

    .line 156
    .local v22, "state":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v23

    .line 157
    .local v23, "persistentState":Landroid/os/PersistableBundle;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v24

    .line 158
    .restart local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 159
    .local v25, "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    const/16 v26, 0x1

    .line 160
    .local v26, "notResumed":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    const/16 v27, 0x1

    .line 161
    .restart local v27    # "isForward":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 162
    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ProfilerInfo;

    move-object/from16 v28, v5

    .local v28, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_9
    move-object/from16 v11, p0

    move-object v13, v6

    .line 163
    invoke-virtual/range {v11 .. v28}, Landroid/app/ApplicationThreadNative;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;)V

    .line 166
    const/4 v5, 0x1

    return v5

    .line 159
    .end local v26    # "notResumed":Z
    .end local v27    # "isForward":Z
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_8
    const/16 v26, 0x0

    .restart local v26    # "notResumed":Z
    goto :goto_7

    .line 160
    :cond_9
    const/16 v27, 0x0

    .restart local v27    # "isForward":Z
    goto :goto_8

    .line 162
    :cond_a
    const/16 v28, 0x0

    goto :goto_9

    .line 171
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "ident":I
    .end local v15    # "info":Landroid/content/pm/ActivityInfo;
    .end local v16    # "curConfig":Landroid/content/res/Configuration;
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v19    # "referrer":Ljava/lang/String;
    .end local v20    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .end local v21    # "procState":I
    .end local v22    # "state":Landroid/os/Bundle;
    .end local v23    # "persistentState":Landroid/os/PersistableBundle;
    .end local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v26    # "notResumed":Z
    .end local v27    # "isForward":Z
    :pswitch_8
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 173
    .restart local v6    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v24

    .line 174
    .restart local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 175
    .restart local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 176
    .restart local v9    # "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    const/16 v26, 0x1

    .line 177
    .restart local v26    # "notResumed":Z
    :goto_a
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/res/Configuration;

    .line 178
    .local v35, "config":Landroid/content/res/Configuration;
    const/16 v17, 0x0

    .line 179
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 180
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v17, Landroid/content/res/Configuration;

    .line 182
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_d

    const/16 v37, 0x1

    .local v37, "preserveWindows":Z
    :goto_b
    move-object/from16 v29, p0

    move-object/from16 v30, v6

    move-object/from16 v31, v24

    move-object/from16 v32, v25

    move/from16 v33, v9

    move/from16 v34, v26

    move-object/from16 v36, v17

    .line 183
    invoke-virtual/range {v29 .. v37}, Landroid/app/ApplicationThreadNative;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V

    .line 185
    const/4 v5, 0x1

    return v5

    .line 176
    .end local v26    # "notResumed":Z
    .end local v35    # "config":Landroid/content/res/Configuration;
    .end local v37    # "preserveWindows":Z
    :cond_c
    const/16 v26, 0x0

    .restart local v26    # "notResumed":Z
    goto :goto_a

    .line 182
    .restart local v35    # "config":Landroid/content/res/Configuration;
    :cond_d
    const/16 v37, 0x0

    goto :goto_b

    .line 190
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v9    # "configChanges":I
    .end local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v26    # "notResumed":Z
    .end local v35    # "config":Landroid/content/res/Configuration;
    :pswitch_9
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 192
    .restart local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 193
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_e

    const/16 v85, 0x1

    .line 194
    .local v85, "andPause":Z
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v85

    invoke-virtual {v0, v1, v6, v2}, Landroid/app/ApplicationThreadNative;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;Z)V

    .line 195
    const/4 v5, 0x1

    return v5

    .line 193
    .end local v85    # "andPause":Z
    :cond_e
    const/16 v85, 0x0

    goto :goto_c

    .line 200
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :pswitch_a
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 202
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    const/16 v95, 0x1

    .line 203
    .local v95, "finishing":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 204
    .restart local v9    # "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v95

    invoke-virtual {v0, v6, v1, v9}, Landroid/app/ApplicationThreadNative;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    .line 205
    const/4 v5, 0x1

    return v5

    .line 202
    .end local v9    # "configChanges":I
    .end local v95    # "finishing":Z
    :cond_f
    const/16 v95, 0x0

    .restart local v95    # "finishing":Z
    goto :goto_d

    .line 210
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v95    # "finishing":Z
    :pswitch_b
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 212
    .restart local v12    # "intent":Landroid/content/Intent;
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ActivityInfo;

    .line 213
    .restart local v15    # "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 214
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 215
    .local v42, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 216
    .local v43, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v44

    .line 217
    .local v44, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    const/16 v45, 0x1

    .line 218
    .local v45, "sync":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 219
    .local v46, "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .local v47, "processState":I
    move-object/from16 v38, p0

    move-object/from16 v39, v12

    move-object/from16 v40, v15

    move-object/from16 v41, v18

    .line 220
    invoke-virtual/range {v38 .. v47}, Landroid/app/ApplicationThreadNative;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    .line 222
    const/4 v5, 0x1

    return v5

    .line 217
    .end local v45    # "sync":Z
    .end local v46    # "sendingUser":I
    .end local v47    # "processState":I
    :cond_10
    const/16 v45, 0x0

    .restart local v45    # "sync":Z
    goto :goto_e

    .line 226
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v15    # "info":Landroid/content/pm/ActivityInfo;
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v42    # "resultCode":I
    .end local v43    # "resultData":Ljava/lang/String;
    .end local v44    # "resultExtras":Landroid/os/Bundle;
    .end local v45    # "sync":Z
    :pswitch_c
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 228
    .local v30, "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v100

    check-cast v100, Landroid/content/pm/ServiceInfo;

    .line 229
    .local v100, "info":Landroid/content/pm/ServiceInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 230
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .line 231
    .restart local v47    # "processState":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v100

    move-object/from16 v3, v18

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 232
    const/4 v5, 0x1

    return v5

    .line 236
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v47    # "processState":I
    .end local v100    # "info":Landroid/content/pm/ServiceInfo;
    :pswitch_d
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 238
    .restart local v30    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 239
    .restart local v12    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    const/16 v116, 0x1

    .line 240
    .local v116, "rebind":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .line 241
    .restart local v47    # "processState":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v116

    move/from16 v3, v47

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 242
    const/4 v5, 0x1

    return v5

    .line 239
    .end local v47    # "processState":I
    .end local v116    # "rebind":Z
    :cond_11
    const/16 v116, 0x0

    .restart local v116    # "rebind":Z
    goto :goto_f

    .line 246
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v116    # "rebind":Z
    :pswitch_e
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 248
    .restart local v30    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 249
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v12}, Landroid/app/ApplicationThreadNative;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 250
    const/4 v5, 0x1

    return v5

    .line 255
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_f
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 257
    .restart local v30    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    const/16 v31, 0x1

    .line 258
    .local v31, "taskRemoved":Z
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 259
    .local v32, "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 261
    .local v33, "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    .line 262
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/Intent;

    :goto_11
    move-object/from16 v29, p0

    .line 266
    invoke-virtual/range {v29 .. v34}, Landroid/app/ApplicationThreadNative;->scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V

    .line 267
    const/4 v5, 0x1

    return v5

    .line 257
    .end local v31    # "taskRemoved":Z
    .end local v32    # "startId":I
    .end local v33    # "fl":I
    :cond_12
    const/16 v31, 0x0

    .restart local v31    # "taskRemoved":Z
    goto :goto_10

    .line 264
    .restart local v32    # "startId":I
    .restart local v33    # "fl":I
    :cond_13
    const/16 v34, 0x0

    .local v34, "args":Landroid/content/Intent;
    goto :goto_11

    .line 272
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v31    # "taskRemoved":Z
    .end local v32    # "startId":I
    .end local v33    # "fl":I
    .end local v34    # "args":Landroid/content/Intent;
    :pswitch_10
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 274
    .restart local v30    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleStopService(Landroid/os/IBinder;)V

    .line 275
    const/4 v5, 0x1

    return v5

    .line 280
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_11
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .line 283
    .local v49, "packageName":Ljava/lang/String;
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/content/pm/ApplicationInfo;

    .line 285
    .local v50, "info":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v51

    .line 286
    .local v51, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    .line 287
    new-instance v52, Landroid/content/ComponentName;

    move-object/from16 v0, v52

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    .line 288
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    .line 289
    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/ProfilerInfo;

    .line 290
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v54

    .line 291
    .local v54, "testArgs":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v88

    .line 292
    .local v88, "binder":Landroid/os/IBinder;
    invoke-static/range {v88 .. v88}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v55

    .line 293
    .local v55, "testWatcher":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v88

    .line 295
    invoke-static/range {v88 .. v88}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v56

    .line 296
    .local v56, "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v57

    .line 297
    .local v57, "testMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    const/16 v58, 0x1

    .line 298
    .local v58, "enableBinderTracking":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17

    const/16 v59, 0x1

    .line 299
    .local v59, "trackAllocation":Z
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_18

    const/16 v60, 0x1

    .line 300
    .local v60, "restrictedBackupMode":Z
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    const/16 v61, 0x1

    .line 301
    .local v61, "persistent":Z
    :goto_17
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/res/Configuration;

    .line 302
    .restart local v35    # "config":Landroid/content/res/Configuration;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 303
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v64

    .line 304
    .local v64, "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v65

    .local v65, "coreSettings":Landroid/os/Bundle;
    move-object/from16 v48, p0

    move-object/from16 v53, v28

    move-object/from16 v62, v35

    move-object/from16 v63, v18

    .line 305
    invoke-virtual/range {v48 .. v65}, Landroid/app/ApplicationThreadNative;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V

    .line 309
    const/4 v5, 0x1

    return v5

    .line 287
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v35    # "config":Landroid/content/res/Configuration;
    .end local v54    # "testArgs":Landroid/os/Bundle;
    .end local v55    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v56    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v57    # "testMode":I
    .end local v58    # "enableBinderTracking":Z
    .end local v59    # "trackAllocation":Z
    .end local v60    # "restrictedBackupMode":Z
    .end local v61    # "persistent":Z
    .end local v64    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    .end local v65    # "coreSettings":Landroid/os/Bundle;
    .end local v88    # "binder":Landroid/os/IBinder;
    :cond_14
    const/16 v52, 0x0

    .local v52, "testName":Landroid/content/ComponentName;
    goto :goto_12

    .line 289
    .end local v52    # "testName":Landroid/content/ComponentName;
    :cond_15
    const/16 v28, 0x0

    .local v28, "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_13

    .line 297
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v54    # "testArgs":Landroid/os/Bundle;
    .restart local v55    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .restart local v56    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .restart local v57    # "testMode":I
    .restart local v88    # "binder":Landroid/os/IBinder;
    :cond_16
    const/16 v58, 0x0

    .restart local v58    # "enableBinderTracking":Z
    goto :goto_14

    .line 298
    :cond_17
    const/16 v59, 0x0

    .restart local v59    # "trackAllocation":Z
    goto :goto_15

    .line 299
    :cond_18
    const/16 v60, 0x0

    .restart local v60    # "restrictedBackupMode":Z
    goto :goto_16

    .line 300
    :cond_19
    const/16 v61, 0x0

    .restart local v61    # "persistent":Z
    goto :goto_17

    .line 314
    .end local v49    # "packageName":Ljava/lang/String;
    .end local v50    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v51    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v54    # "testArgs":Landroid/os/Bundle;
    .end local v55    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v56    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v57    # "testMode":I
    .end local v58    # "enableBinderTracking":Z
    .end local v59    # "trackAllocation":Z
    .end local v60    # "restrictedBackupMode":Z
    .end local v61    # "persistent":Z
    .end local v88    # "binder":Landroid/os/IBinder;
    :pswitch_12
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleExit()V

    .line 316
    const/4 v5, 0x1

    return v5

    .line 321
    :pswitch_13
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleSuicide()V

    .line 323
    const/4 v5, 0x1

    return v5

    .line 328
    :pswitch_14
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/res/Configuration;

    .line 330
    .restart local v35    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 331
    const/4 v5, 0x1

    return v5

    .line 335
    .end local v35    # "config":Landroid/content/res/Configuration;
    :pswitch_15
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->updateTimeZone()V

    .line 337
    const/4 v5, 0x1

    return v5

    .line 341
    :pswitch_16
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->clearDnsCache()V

    .line 343
    const/4 v5, 0x1

    return v5

    .line 347
    :pswitch_17
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v115

    .line 349
    .local v115, "proxy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v110

    .line 350
    .local v110, "port":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v93

    .line 351
    .local v93, "exclList":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v106

    check-cast v106, Landroid/net/Uri;

    .line 352
    .local v106, "pacFileUrl":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v115

    move-object/from16 v2, v110

    move-object/from16 v3, v93

    move-object/from16 v4, v106

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 353
    const/4 v5, 0x1

    return v5

    .line 357
    .end local v93    # "exclList":Ljava/lang/String;
    .end local v106    # "pacFileUrl":Landroid/net/Uri;
    .end local v110    # "port":Ljava/lang/String;
    .end local v115    # "proxy":Ljava/lang/String;
    :pswitch_18
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->processInBackground()V

    .line 359
    const/4 v5, 0x1

    return v5

    .line 363
    :pswitch_19
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v94

    .line 365
    .local v94, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 366
    .local v121, "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v82

    .line 367
    .local v82, "args":[Ljava/lang/String;
    if-eqz v94, :cond_1a

    .line 368
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v121

    move-object/from16 v2, v82

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 370
    :try_start_0
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :cond_1a
    :goto_18
    const/4 v5, 0x1

    return v5

    .line 371
    :catch_0
    move-exception v91

    .local v91, "e":Ljava/io/IOException;
    goto :goto_18

    .line 378
    .end local v82    # "args":[Ljava/lang/String;
    .end local v91    # "e":Ljava/io/IOException;
    .end local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v121    # "service":Landroid/os/IBinder;
    :pswitch_1a
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v94

    .line 380
    .restart local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 381
    .restart local v121    # "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v82

    .line 382
    .restart local v82    # "args":[Ljava/lang/String;
    if-eqz v94, :cond_1b

    .line 383
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v121

    move-object/from16 v2, v82

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 385
    :try_start_1
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 389
    :cond_1b
    :goto_19
    const/4 v5, 0x1

    return v5

    .line 386
    :catch_1
    move-exception v91

    .restart local v91    # "e":Ljava/io/IOException;
    goto :goto_19

    .line 393
    .end local v82    # "args":[Ljava/lang/String;
    .end local v91    # "e":Ljava/io/IOException;
    .end local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v121    # "service":Landroid/os/IBinder;
    :pswitch_1b
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 394
    invoke-static {v5}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v67

    .line 396
    .local v67, "receiver":Landroid/content/IIntentReceiver;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 397
    .restart local v12    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 398
    .restart local v42    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v70

    .line 399
    .local v70, "dataStr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v71

    .line 400
    .local v71, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    const/16 v72, 0x1

    .line 401
    .local v72, "ordered":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    const/16 v73, 0x1

    .line 402
    .local v73, "sticky":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 403
    .restart local v46    # "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .restart local v47    # "processState":I
    move-object/from16 v66, p0

    move-object/from16 v68, v12

    move/from16 v69, v42

    move/from16 v74, v46

    move/from16 v75, v47

    .line 404
    invoke-virtual/range {v66 .. v75}, Landroid/app/ApplicationThreadNative;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    .line 406
    const/4 v5, 0x1

    return v5

    .line 400
    .end local v46    # "sendingUser":I
    .end local v47    # "processState":I
    .end local v72    # "ordered":Z
    .end local v73    # "sticky":Z
    :cond_1c
    const/16 v72, 0x0

    .restart local v72    # "ordered":Z
    goto :goto_1a

    .line 401
    :cond_1d
    const/16 v73, 0x0

    .restart local v73    # "sticky":Z
    goto :goto_1b

    .line 411
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v42    # "resultCode":I
    .end local v67    # "receiver":Landroid/content/IIntentReceiver;
    .end local v70    # "dataStr":Ljava/lang/String;
    .end local v71    # "extras":Landroid/os/Bundle;
    .end local v72    # "ordered":Z
    .end local v73    # "sticky":Z
    :pswitch_1c
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleLowMemory()V

    .line 413
    const/4 v5, 0x1

    return v5

    .line 418
    :pswitch_1d
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 420
    .restart local v6    # "b":Landroid/os/IBinder;
    const/16 v17, 0x0

    .line 421
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    .line 422
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v17, Landroid/content/res/Configuration;

    .line 424
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_1f

    const/16 v117, 0x1

    .line 425
    .local v117, "reportToActivity":Z
    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v117

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 426
    const/4 v5, 0x1

    return v5

    .line 424
    .end local v117    # "reportToActivity":Z
    :cond_1f
    const/16 v117, 0x0

    goto :goto_1c

    .line 431
    .end local v6    # "b":Landroid/os/IBinder;
    :pswitch_1e
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 434
    .restart local v30    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 433
    invoke-static {v5}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v20

    .line 435
    .restart local v20    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 436
    const/4 v5, 0x1

    return v5

    .line 441
    .end local v20    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_1f
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_20

    const/16 v126, 0x1

    .line 443
    .local v126, "start":Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v112

    .line 444
    .local v112, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_21

    .line 445
    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ProfilerInfo;

    move-object/from16 v28, v5

    .line 446
    .local v28, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_1e
    move-object/from16 v0, p0

    move/from16 v1, v126

    move-object/from16 v2, v28

    move/from16 v3, v112

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    .line 447
    const/4 v5, 0x1

    return v5

    .line 442
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v112    # "profileType":I
    .end local v126    # "start":Z
    :cond_20
    const/16 v126, 0x0

    .restart local v126    # "start":Z
    goto :goto_1d

    .line 445
    .restart local v112    # "profileType":I
    :cond_21
    const/16 v28, 0x0

    goto :goto_1e

    .line 452
    .end local v112    # "profileType":I
    .end local v126    # "start":Z
    :pswitch_20
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v97

    .line 454
    .local v97, "group":I
    move-object/from16 v0, p0

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setSchedulingGroup(I)V

    .line 455
    const/4 v5, 0x1

    return v5

    .line 460
    .end local v97    # "group":I
    :pswitch_21
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/content/pm/ApplicationInfo;

    .line 462
    .local v86, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 463
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .line 464
    .local v87, "backupMode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move-object/from16 v2, v18

    move/from16 v3, v87

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 465
    const/4 v5, 0x1

    return v5

    .line 470
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v86    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v87    # "backupMode":I
    :pswitch_22
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/content/pm/ApplicationInfo;

    .line 472
    .restart local v86    # "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 473
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    .line 474
    const/4 v5, 0x1

    return v5

    .line 479
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v86    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :pswitch_23
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v89

    .line 481
    .local v89, "cmd":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v107

    .line 482
    .local v107, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v89

    move-object/from16 v2, v107

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 483
    const/4 v5, 0x1

    return v5

    .line 488
    .end local v89    # "cmd":I
    .end local v107    # "packages":[Ljava/lang/String;
    :pswitch_24
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v104

    .line 490
    .local v104, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCrash(Ljava/lang/String;)V

    .line 491
    const/4 v5, 0x1

    return v5

    .line 496
    .end local v104    # "msg":Ljava/lang/String;
    :pswitch_25
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_22

    const/16 v103, 0x1

    .line 498
    .local v103, "managed":Z
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v108

    .line 499
    .local v108, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_23

    .line 500
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v94, v5

    .line 501
    .restart local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_20
    move-object/from16 v0, p0

    move/from16 v1, v103

    move-object/from16 v2, v108

    move-object/from16 v3, v94

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 502
    const/4 v5, 0x1

    return v5

    .line 497
    .end local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v103    # "managed":Z
    .end local v108    # "path":Ljava/lang/String;
    :cond_22
    const/16 v103, 0x0

    .restart local v103    # "managed":Z
    goto :goto_1f

    .line 500
    .restart local v108    # "path":Ljava/lang/String;
    :cond_23
    const/16 v94, 0x0

    goto :goto_20

    .line 506
    .end local v103    # "managed":Z
    .end local v108    # "path":Ljava/lang/String;
    :pswitch_26
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v94

    .line 508
    .restart local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 509
    .local v83, "activity":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v111

    .line 510
    .local v111, "prefix":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v82

    .line 511
    .restart local v82    # "args":[Ljava/lang/String;
    if-eqz v94, :cond_24

    .line 512
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    move-object/from16 v2, v111

    move-object/from16 v3, v82

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 514
    :try_start_2
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 518
    :cond_24
    :goto_21
    const/4 v5, 0x1

    return v5

    .line 515
    :catch_2
    move-exception v91

    .restart local v91    # "e":Ljava/io/IOException;
    goto :goto_21

    .line 522
    .end local v82    # "args":[Ljava/lang/String;
    .end local v83    # "activity":Landroid/os/IBinder;
    .end local v91    # "e":Ljava/io/IOException;
    .end local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v111    # "prefix":Ljava/lang/String;
    :pswitch_27
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v123

    .line 524
    .local v123, "settings":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v123

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setCoreSettings(Landroid/os/Bundle;)V

    .line 525
    const/4 v5, 0x1

    return v5

    .line 529
    .end local v123    # "settings":Landroid/os/Bundle;
    :pswitch_28
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v109

    .line 531
    .local v109, "pkg":Ljava/lang/String;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Landroid/content/res/CompatibilityInfo;

    .line 532
    .local v90, "compat":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v109

    move-object/from16 v2, v90

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    .line 533
    const/4 v5, 0x1

    return v5

    .line 537
    .end local v90    # "compat":Landroid/content/res/CompatibilityInfo;
    .end local v109    # "pkg":Ljava/lang/String;
    :pswitch_29
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v102

    .line 539
    .local v102, "level":I
    move-object/from16 v0, p0

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleTrimMemory(I)V

    .line 540
    const/4 v5, 0x1

    return v5

    .line 545
    .end local v102    # "level":I
    :pswitch_2a
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v94

    .line 547
    .restart local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    sget-object v5, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Landroid/os/Debug$MemoryInfo;

    .line 548
    .local v76, "mi":Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_26

    const/16 v77, 0x1

    .line 549
    .local v77, "checkin":Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_27

    const/16 v78, 0x1

    .line 550
    .local v78, "dumpInfo":Z
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_28

    const/16 v79, 0x1

    .line 551
    .local v79, "dumpDalvik":Z
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_29

    const/16 v80, 0x1

    .line 552
    .local v80, "dumpSummaryOnly":Z
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    const/16 v81, 0x1

    .line 553
    .local v81, "dumpUnreachable":Z
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v82

    .line 554
    .restart local v82    # "args":[Ljava/lang/String;
    if-eqz v94, :cond_25

    .line 556
    :try_start_3
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v75

    move-object/from16 v74, p0

    invoke-virtual/range {v74 .. v82}, Landroid/app/ApplicationThreadNative;->dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZ[Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 560
    :try_start_4
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 566
    :cond_25
    :goto_27
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    const/4 v5, 0x1

    return v5

    .line 548
    .end local v77    # "checkin":Z
    .end local v78    # "dumpInfo":Z
    .end local v79    # "dumpDalvik":Z
    .end local v80    # "dumpSummaryOnly":Z
    .end local v81    # "dumpUnreachable":Z
    .end local v82    # "args":[Ljava/lang/String;
    :cond_26
    const/16 v77, 0x0

    .restart local v77    # "checkin":Z
    goto :goto_22

    .line 549
    :cond_27
    const/16 v78, 0x0

    .restart local v78    # "dumpInfo":Z
    goto :goto_23

    .line 550
    :cond_28
    const/16 v79, 0x0

    .restart local v79    # "dumpDalvik":Z
    goto :goto_24

    .line 551
    :cond_29
    const/16 v80, 0x0

    .restart local v80    # "dumpSummaryOnly":Z
    goto :goto_25

    .line 552
    :cond_2a
    const/16 v81, 0x0

    .restart local v81    # "dumpUnreachable":Z
    goto :goto_26

    .line 561
    .restart local v82    # "args":[Ljava/lang/String;
    :catch_3
    move-exception v91

    .restart local v91    # "e":Ljava/io/IOException;
    goto :goto_27

    .line 558
    .end local v91    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 560
    :try_start_5
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 558
    :goto_28
    throw v5

    .line 561
    :catch_4
    move-exception v91

    .restart local v91    # "e":Ljava/io/IOException;
    goto :goto_28

    .line 572
    .end local v76    # "mi":Landroid/os/Debug$MemoryInfo;
    .end local v77    # "checkin":Z
    .end local v78    # "dumpInfo":Z
    .end local v79    # "dumpDalvik":Z
    .end local v80    # "dumpSummaryOnly":Z
    .end local v81    # "dumpUnreachable":Z
    .end local v82    # "args":[Ljava/lang/String;
    .end local v91    # "e":Ljava/io/IOException;
    .end local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2b
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v94

    .line 574
    .restart local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v82

    .line 575
    .restart local v82    # "args":[Ljava/lang/String;
    if-eqz v94, :cond_2b

    .line 577
    :try_start_6
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 580
    :try_start_7
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 586
    :cond_2b
    :goto_29
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    const/4 v5, 0x1

    return v5

    .line 581
    :catch_5
    move-exception v91

    .restart local v91    # "e":Ljava/io/IOException;
    goto :goto_29

    .line 578
    .end local v91    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    .line 580
    :try_start_8
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 578
    :goto_2a
    throw v5

    .line 581
    :catch_6
    move-exception v91

    .restart local v91    # "e":Ljava/io/IOException;
    goto :goto_2a

    .line 592
    .end local v82    # "args":[Ljava/lang/String;
    .end local v91    # "e":Ljava/io/IOException;
    .end local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2c
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v94

    .line 594
    .restart local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v82

    .line 595
    .restart local v82    # "args":[Ljava/lang/String;
    if-eqz v94, :cond_2c

    .line 597
    :try_start_9
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 600
    :try_start_a
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 606
    :cond_2c
    :goto_2b
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    const/4 v5, 0x1

    return v5

    .line 601
    :catch_7
    move-exception v91

    .restart local v91    # "e":Ljava/io/IOException;
    goto :goto_2b

    .line 598
    .end local v91    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v5

    .line 600
    :try_start_b
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 598
    :goto_2c
    throw v5

    .line 601
    :catch_8
    move-exception v91

    .restart local v91    # "e":Ljava/io/IOException;
    goto :goto_2c

    .line 612
    .end local v82    # "args":[Ljava/lang/String;
    .end local v91    # "e":Ljava/io/IOException;
    .end local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2d
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v114

    .line 614
    .local v114, "provider":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v114

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 615
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    const/4 v5, 0x1

    return v5

    .line 621
    .end local v114    # "provider":Landroid/os/IBinder;
    :pswitch_2e
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 623
    .local v84, "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v118

    .line 624
    .local v118, "requestToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v119

    .line 625
    .local v119, "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v122

    .line 626
    .local v122, "sessionId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move-object/from16 v2, v118

    move/from16 v3, v119

    move/from16 v4, v122

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;II)V

    .line 627
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    const/4 v5, 0x1

    return v5

    .line 633
    .end local v84    # "activityToken":Landroid/os/IBinder;
    .end local v118    # "requestToken":Landroid/os/IBinder;
    .end local v119    # "requestType":I
    .end local v122    # "sessionId":I
    :pswitch_2f
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 635
    .restart local v30    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_2d

    const/16 v128, 0x1

    .line 636
    .local v128, "timeout":Z
    :goto_2d
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v128

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 637
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    const/4 v5, 0x1

    return v5

    .line 635
    .end local v128    # "timeout":Z
    :cond_2d
    const/16 v128, 0x0

    goto :goto_2d

    .line 643
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_30
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 645
    .restart local v30    # "token":Landroid/os/IBinder;
    new-instance v105, Landroid/app/ActivityOptions;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    move-object/from16 v0, v105

    invoke-direct {v0, v5}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 646
    .local v105, "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v105

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    .line 647
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    const/4 v5, 0x1

    return v5

    .line 653
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v105    # "options":Landroid/app/ActivityOptions;
    :pswitch_31
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v127

    .line 655
    .local v127, "state":I
    move-object/from16 v0, p0

    move/from16 v1, v127

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setProcessState(I)V

    .line 656
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    const/4 v5, 0x1

    return v5

    .line 662
    .end local v127    # "state":I
    :pswitch_32
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v113

    check-cast v113, Landroid/content/pm/ProviderInfo;

    .line 664
    .local v113, "provider":Landroid/content/pm/ProviderInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v113

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    .line 665
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    const/4 v5, 0x1

    return v5

    .line 671
    .end local v113    # "provider":Landroid/content/pm/ProviderInfo;
    :pswitch_33
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v101

    .line 673
    .local v101, "is24Hour":B
    const/4 v5, 0x1

    move/from16 v0, v101

    if-ne v0, v5, :cond_2e

    const/4 v5, 0x1

    :goto_2e
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ApplicationThreadNative;->updateTimePrefs(Z)V

    .line 674
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    const/4 v5, 0x1

    return v5

    .line 673
    :cond_2e
    const/4 v5, 0x0

    goto :goto_2e

    .line 680
    .end local v101    # "is24Hour":B
    :pswitch_34
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 682
    .restart local v30    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCancelVisibleBehind(Landroid/os/IBinder;)V

    .line 683
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    const/4 v5, 0x1

    return v5

    .line 689
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_35
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 691
    .restart local v30    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-lez v5, :cond_2f

    const/16 v92, 0x1

    .line 692
    .local v92, "enabled":Z
    :goto_2f
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v92

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V

    .line 693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    const/4 v5, 0x1

    return v5

    .line 691
    .end local v92    # "enabled":Z
    :cond_2f
    const/16 v92, 0x0

    goto :goto_2f

    .line 699
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_36
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 701
    .restart local v30    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 702
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    const/4 v5, 0x1

    return v5

    .line 708
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_37
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v96

    .line 710
    .local v96, "firstPacket":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->notifyCleartextNetwork([B)V

    .line 711
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    const/4 v5, 0x1

    return v5

    .line 717
    .end local v96    # "firstPacket":[B
    :pswitch_38
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->startBinderTracking()V

    .line 719
    const/4 v5, 0x1

    return v5

    .line 724
    :pswitch_39
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v94

    .line 726
    .restart local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v94, :cond_30

    .line 727
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ApplicationThreadNative;->stopBinderTrackingAndDump(Ljava/io/FileDescriptor;)V

    .line 729
    :try_start_c
    invoke-virtual/range {v94 .. v94}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 733
    :cond_30
    :goto_30
    const/4 v5, 0x1

    return v5

    .line 730
    :catch_9
    move-exception v91

    .restart local v91    # "e":Ljava/io/IOException;
    goto :goto_30

    .line 738
    .end local v91    # "e":Ljava/io/IOException;
    .end local v94    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_3a
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 740
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_31

    const/16 v98, 0x1

    .line 741
    .local v98, "inMultiWindow":Z
    :goto_31
    move-object/from16 v0, p0

    move/from16 v1, v98

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleMultiWindowModeChanged(Landroid/os/IBinder;Z)V

    .line 742
    const/4 v5, 0x1

    return v5

    .line 740
    .end local v98    # "inMultiWindow":Z
    :cond_31
    const/16 v98, 0x0

    goto :goto_31

    .line 747
    .end local v6    # "b":Landroid/os/IBinder;
    :pswitch_3b
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 749
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_32

    const/16 v99, 0x1

    .line 750
    .local v99, "inPip":Z
    :goto_32
    move-object/from16 v0, p0

    move/from16 v1, v99

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->schedulePictureInPictureModeChanged(Landroid/os/IBinder;Z)V

    .line 751
    const/4 v5, 0x1

    return v5

    .line 749
    .end local v99    # "inPip":Z
    :cond_32
    const/16 v99, 0x0

    goto :goto_32

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_14
        :pswitch_f
        :pswitch_15
        :pswitch_18
        :pswitch_d
        :pswitch_e
        :pswitch_19
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_8
        :pswitch_4
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_30
        :pswitch_13
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_16
        :pswitch_17
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_1a
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_1e
    .end packed-switch
.end method
