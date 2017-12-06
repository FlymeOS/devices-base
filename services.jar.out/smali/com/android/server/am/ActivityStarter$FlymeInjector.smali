.class final Lcom/android/server/am/ActivityStarter$FlymeInjector;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static changeMayInterceptPackage(Lcom/android/server/am/ActivityStarter;ILjava/lang/String;Landroid/content/pm/ActivityInfo;)Z
    .locals 4
    .param p0, "dst"    # Lcom/android/server/am/ActivityStarter;
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v3, 0x1

    .line 2133
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    if-nez v1, :cond_0

    .line 2134
    const-string/jumbo v1, "flyme_packagemanager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/FlymePackageManagerService;

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    .line 2136
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStarter;->flymeGetFieldService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2137
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 2138
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/FlymePackageManagerService;->changeMayInterceptPackage(Ljava/lang/String;Z)Z

    .line 2142
    :cond_1
    if-eqz p3, :cond_2

    const-string/jumbo v1, "android.permission.CALL_PHONE"

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2143
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2142
    const/16 v2, 0xd

    invoke-static {v2, p2, p1, v1}, Lmeizu/security/FlymePermissionManager;->isGranted(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2147
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 2144
    :cond_3
    return v3
.end method

.method static interceptForAccessControl(Lcom/android/server/am/ActivityStarter;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    .locals 21
    .param p0, "dst"    # Lcom/android/server/am/ActivityStarter;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "callingUid"    # I

    .prologue
    .line 2152
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v16

    .line 2153
    .local v16, "srcIntentFlag":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentExt;->setAccessSrcFlags(I)V

    .line 2154
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v8

    .line 2155
    .local v8, "flag":I
    and-int/lit8 v17, v8, 0x10

    if-eqz v17, :cond_1

    const/4 v10, 0x1

    .line 2156
    .local v10, "isLockView":Z
    :goto_0
    and-int/lit8 v17, v8, 0x20

    if-eqz v17, :cond_2

    const/4 v9, 0x1

    .line 2157
    .local v9, "isFastStarting":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->flymeGetFieldService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2158
    .local v6, "context":Landroid/content/Context;
    if-eqz p2, :cond_0

    if-eqz v10, :cond_3

    if-eqz v9, :cond_3

    .line 2208
    .end local v6    # "context":Landroid/content/Context;
    .end local v8    # "flag":I
    .end local v9    # "isFastStarting":Z
    .end local v10    # "isLockView":Z
    .end local v16    # "srcIntentFlag":I
    :cond_0
    :goto_2
    return-object p2

    .line 2155
    .restart local v8    # "flag":I
    .restart local v16    # "srcIntentFlag":I
    :cond_1
    const/4 v10, 0x0

    .restart local v10    # "isLockView":Z
    goto :goto_0

    .line 2156
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "isFastStarting":Z
    goto :goto_1

    .line 2159
    .restart local v6    # "context":Landroid/content/Context;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    .line 2160
    const-string/jumbo v17, "access_control"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lmeizu/security/AccessControlManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStarter;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    .line 2162
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mFlymeRealPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    .line 2163
    return-object p2

    .line 2165
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v13, v0, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    .line 2166
    .local v13, "needAccessControl":Z
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 2167
    const-string/jumbo v18, "mz_app_lock_control"

    const/16 v19, 0x0

    const/16 v20, -0x3

    .line 2166
    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 2168
    .local v4, "appAccessControl":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lmeizu/security/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    if-eqz v13, :cond_0

    if-eqz v4, :cond_0

    .line 2170
    const-string/jumbo v14, ""

    .line 2171
    .local v14, "pkgName":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 2172
    .local v5, "className":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 2173
    .local v12, "name":Landroid/content/ComponentName;
    if-eqz v12, :cond_6

    .line 2174
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 2175
    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 2177
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v5}, Lmeizu/security/AccessControlManager;->checkVideoActivity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .line 2178
    .local v11, "isVideoActivity":Z
    if-eqz v11, :cond_7

    .line 2179
    return-object p2

    .line 2182
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mFlymeRealPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->getAccessInfo(I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 2183
    .local v15, "rInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2184
    .local v3, "activityLabel":Ljava/lang/CharSequence;
    if-nez v3, :cond_8

    .line 2185
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    .line 2186
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2189
    :cond_8
    :goto_3
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2190
    .local v2, "accessPkg":Ljava/lang/String;
    if-eqz v15, :cond_d

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 p2, v0

    .line 2191
    :goto_4
    if-eqz p2, :cond_9

    .line 2192
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v3, v0, Landroid/content/ActivityInfoExt;->mDisplaytitleString:Ljava/lang/CharSequence;

    .line 2193
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/content/ActivityInfoExt;->mAccessPkg:Ljava/lang/String;

    .line 2194
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/ActivityInfoExt;->mStartComponentName:Landroid/content/ComponentName;

    .line 2196
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    if-eqz v17, :cond_a

    .line 2197
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/IntentExt;->setAccessSrcPackageName(Ljava/lang/String;)V

    .line 2198
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/IntentExt;->setAccessSrcClassName(Ljava/lang/String;)V

    .line 2200
    :cond_a
    if-eqz p2, :cond_b

    .line 2201
    new-instance v17, Landroid/content/ComponentName;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2203
    :cond_b
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityStarter;->mIsIntercepted:Z

    goto/16 :goto_2

    .line 2206
    .end local v2    # "accessPkg":Ljava/lang/String;
    .end local v3    # "activityLabel":Ljava/lang/CharSequence;
    .end local v4    # "appAccessControl":I
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "context":Landroid/content/Context;
    .end local v8    # "flag":I
    .end local v9    # "isFastStarting":Z
    .end local v10    # "isLockView":Z
    .end local v11    # "isVideoActivity":Z
    .end local v12    # "name":Landroid/content/ComponentName;
    .end local v13    # "needAccessControl":Z
    .end local v14    # "pkgName":Ljava/lang/String;
    .end local v15    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v16    # "srcIntentFlag":I
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    goto/16 :goto_2

    .line 2187
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "activityLabel":Ljava/lang/CharSequence;
    .restart local v4    # "appAccessControl":I
    .restart local v5    # "className":Ljava/lang/String;
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v8    # "flag":I
    .restart local v9    # "isFastStarting":Z
    .restart local v10    # "isLockView":Z
    .restart local v11    # "isVideoActivity":Z
    .restart local v12    # "name":Landroid/content/ComponentName;
    .restart local v13    # "needAccessControl":Z
    .restart local v14    # "pkgName":Ljava/lang/String;
    .restart local v15    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v16    # "srcIntentFlag":I
    :cond_c
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto/16 :goto_3

    .line 2190
    .restart local v2    # "accessPkg":Ljava/lang/String;
    :cond_d
    const/16 p2, 0x0

    goto/16 :goto_4
.end method

.method static isIntercepted(Lcom/android/server/am/ActivityStarter;)Z
    .locals 1
    .param p0, "dst"    # Lcom/android/server/am/ActivityStarter;

    .prologue
    .line 2212
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mIsIntercepted:Z

    return v0
.end method
