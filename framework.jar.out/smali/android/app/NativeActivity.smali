.class public Landroid/app/NativeActivity;
.super Landroid/app/Activity;
.source "NativeActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;
.implements Landroid/view/InputQueue$Callback;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NativeActivity$NativeContentView;
    }
.end annotation


# static fields
.field private static final KEY_NATIVE_SAVED_STATE:Ljava/lang/String; = "android:native_state"

.field public static final META_DATA_FUNC_NAME:Ljava/lang/String; = "android.app.func_name"

.field public static final META_DATA_LIB_NAME:Ljava/lang/String; = "android.app.lib_name"


# instance fields
.field private mCurInputQueue:Landroid/view/InputQueue;

.field private mCurSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mDestroyed:Z

.field private mDispatchingUnhandledKey:Z

.field private mIMM:Landroid/view/inputmethod/InputMethodManager;

.field mLastContentHeight:I

.field mLastContentWidth:I

.field mLastContentX:I

.field mLastContentY:I

.field final mLocation:[I

.field private mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

.field private mNativeHandle:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/NativeActivity;->mLocation:[I

    .line 59
    return-void
.end method

.method private static getAbsolutePath(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 189
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private native getDlError()Ljava/lang/String;
.end method

.method private native loadNativeCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/MessageQueue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/AssetManager;[BLjava/lang/ClassLoader;Ljava/lang/String;)J
.end method

.method private native onConfigurationChangedNative(J)V
.end method

.method private native onContentRectChangedNative(JIIII)V
.end method

.method private native onInputQueueCreatedNative(JJ)V
.end method

.method private native onInputQueueDestroyedNative(JJ)V
.end method

.method private native onLowMemoryNative(J)V
.end method

.method private native onPauseNative(J)V
.end method

.method private native onResumeNative(J)V
.end method

.method private native onSaveInstanceStateNative(J)[B
.end method

.method private native onStartNative(J)V
.end method

.method private native onStopNative(J)V
.end method

.method private native onSurfaceChangedNative(JLandroid/view/Surface;III)V
.end method

.method private native onSurfaceCreatedNative(JLandroid/view/Surface;)V
.end method

.method private native onSurfaceDestroyedNative(J)V
.end method

.method private native onSurfaceRedrawNeededNative(JLandroid/view/Surface;)V
.end method

.method private native onWindowFocusChangedNative(JZ)V
.end method

.method private native unloadNativeCode(J)V
.end method


# virtual methods
.method hideIme(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 336
    iget-object v0, p0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v1}, Landroid/app/NativeActivity$NativeContentView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 335
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 243
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 244
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onConfigurationChangedNative(J)V

    .line 241
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    const-string/jumbo v16, "main"

    .line 133
    .local v16, "libname":Ljava/lang/String;
    const-string/jumbo v4, "ANativeActivity_onCreate"

    .line 136
    .local v4, "funcname":Ljava/lang/String;
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/NativeActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/Window;->takeSurface(Landroid/view/SurfaceHolder$Callback2;)V

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/Window;->takeInputQueue(Landroid/view/InputQueue$Callback;)V

    .line 140
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/view/Window;->setFormat(I)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 142
    const/16 v5, 0x10

    .line 141
    invoke-virtual {v2, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 145
    new-instance v2, Landroid/app/NativeActivity$NativeContentView;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/app/NativeActivity$NativeContentView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    move-object/from16 v0, p0

    iput-object v0, v2, Landroid/app/NativeActivity$NativeContentView;->mActivity:Landroid/app/NativeActivity;

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/NativeActivity;->setContentView(Landroid/view/View;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v2}, Landroid/app/NativeActivity$NativeContentView;->requestFocus()Z

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v2}, Landroid/app/NativeActivity$NativeContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 152
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 153
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    const/16 v6, 0x80

    .line 152
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v14

    .line 154
    .local v14, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v2, v14, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 155
    iget-object v2, v14, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "android.app.lib_name"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 156
    .local v17, "ln":Ljava/lang/String;
    if-eqz v17, :cond_0

    move-object/from16 v16, v17

    .line 157
    :cond_0
    iget-object v2, v14, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "android.app.func_name"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 158
    if-eqz v17, :cond_1

    move-object/from16 v4, v17

    .line 164
    .end local v17    # "ln":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    check-cast v12, Ldalvik/system/BaseDexClassLoader;

    .line 165
    .local v12, "classLoader":Ldalvik/system/BaseDexClassLoader;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ldalvik/system/BaseDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "path":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 168
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to find native library "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 169
    const-string/jumbo v6, " using classloader: "

    .line 168
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 169
    invoke-virtual {v12}, Ldalvik/system/BaseDexClassLoader;->toString()Ljava/lang/String;

    move-result-object v6

    .line 168
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    .end local v3    # "path":Ljava/lang/String;
    .end local v12    # "classLoader":Ldalvik/system/BaseDexClassLoader;
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v15

    .line 161
    .local v15, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Error getting activity info"

    invoke-direct {v2, v5, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 172
    .end local v15    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v12    # "classLoader":Ldalvik/system/BaseDexClassLoader;
    .restart local v14    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_2
    if-eqz p1, :cond_3

    .line 173
    const-string/jumbo v2, "android:native_state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v11

    .line 175
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v5

    .line 176
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/app/NativeActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getObbDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/app/NativeActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    .line 177
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/NativeActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/app/NativeActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    .line 178
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    .line 179
    invoke-virtual {v12}, Ldalvik/system/BaseDexClassLoader;->getLdLibraryPath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v2, p0

    .line 175
    invoke-direct/range {v2 .. v13}, Landroid/app/NativeActivity;->loadNativeCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/MessageQueue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/AssetManager;[BLjava/lang/ClassLoader;Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Landroid/app/NativeActivity;->mNativeHandle:J

    .line 181
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/app/NativeActivity;->mNativeHandle:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_4

    .line 182
    new-instance v2, Ljava/lang/UnsatisfiedLinkError;

    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to load native library \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Landroid/app/NativeActivity;->getDlError()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 182
    invoke-direct {v2, v5}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    :cond_3
    const/4 v11, 0x0

    .local v11, "nativeSavedState":[B
    goto :goto_0

    .line 185
    .end local v11    # "nativeSavedState":[B
    :cond_4
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    .line 195
    iget-object v0, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 196
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onSurfaceDestroyedNative(J)V

    .line 197
    iput-object v4, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 199
    :cond_0
    iget-object v0, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    if-eqz v0, :cond_1

    .line 200
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    iget-object v2, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    invoke-virtual {v2}, Landroid/view/InputQueue;->getNativePtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/NativeActivity;->onInputQueueDestroyedNative(JJ)V

    .line 201
    iput-object v4, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    .line 203
    :cond_1
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->unloadNativeCode(J)V

    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 193
    return-void
.end method

.method public onGlobalLayout()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 307
    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    iget-object v2, p0, Landroid/app/NativeActivity;->mLocation:[I

    invoke-virtual {v1, v2}, Landroid/app/NativeActivity$NativeContentView;->getLocationInWindow([I)V

    .line 308
    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v1}, Landroid/app/NativeActivity$NativeContentView;->getWidth()I

    move-result v8

    .line 309
    .local v8, "w":I
    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v1}, Landroid/app/NativeActivity$NativeContentView;->getHeight()I

    move-result v0

    .line 310
    .local v0, "h":I
    iget-object v1, p0, Landroid/app/NativeActivity;->mLocation:[I

    aget v1, v1, v3

    iget v2, p0, Landroid/app/NativeActivity;->mLastContentX:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/app/NativeActivity;->mLocation:[I

    aget v1, v1, v4

    iget v2, p0, Landroid/app/NativeActivity;->mLastContentY:I

    if-eq v1, v2, :cond_2

    .line 312
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/app/NativeActivity;->mLocation:[I

    aget v1, v1, v3

    iput v1, p0, Landroid/app/NativeActivity;->mLastContentX:I

    .line 313
    iget-object v1, p0, Landroid/app/NativeActivity;->mLocation:[I

    aget v1, v1, v4

    iput v1, p0, Landroid/app/NativeActivity;->mLastContentY:I

    .line 314
    iput v8, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    .line 315
    iput v0, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    .line 316
    iget-boolean v1, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v1, :cond_1

    .line 317
    iget-wide v2, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    iget v4, p0, Landroid/app/NativeActivity;->mLastContentX:I

    .line 318
    iget v5, p0, Landroid/app/NativeActivity;->mLastContentY:I

    iget v6, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    iget v7, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    move-object v1, p0

    .line 317
    invoke-direct/range {v1 .. v7}, Landroid/app/NativeActivity;->onContentRectChangedNative(JIIII)V

    .line 306
    :cond_1
    return-void

    .line 311
    :cond_2
    iget v1, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    if-ne v8, v1, :cond_0

    iget v1, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    if-eq v0, v1, :cond_1

    goto :goto_0
.end method

.method public onInputQueueCreated(Landroid/view/InputQueue;)V
    .locals 4
    .param p1, "queue"    # Landroid/view/InputQueue;

    .prologue
    .line 293
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 294
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    .line 295
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-virtual {p1}, Landroid/view/InputQueue;->getNativePtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/NativeActivity;->onInputQueueCreatedNative(JJ)V

    .line 292
    :cond_0
    return-void
.end method

.method public onInputQueueDestroyed(Landroid/view/InputQueue;)V
    .locals 4
    .param p1, "queue"    # Landroid/view/InputQueue;

    .prologue
    .line 300
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 301
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-virtual {p1}, Landroid/view/InputQueue;->getNativePtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/NativeActivity;->onInputQueueDestroyedNative(JJ)V

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    .line 299
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 251
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 252
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onLowMemoryNative(J)V

    .line 249
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 210
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onPauseNative(J)V

    .line 208
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 216
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onResumeNative(J)V

    .line 214
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 222
    iget-wide v2, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v2, v3}, Landroid/app/NativeActivity;->onSaveInstanceStateNative(J)[B

    move-result-object v0

    .line 223
    .local v0, "state":[B
    if-eqz v0, :cond_0

    .line 224
    const-string/jumbo v1, "android:native_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 220
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 231
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onStartNative(J)V

    .line 229
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 237
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onStopNative(J)V

    .line 235
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 258
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 259
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 260
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Landroid/app/NativeActivity;->onWindowFocusChangedNative(JZ)V

    .line 257
    :cond_0
    return-void
.end method

.method setWindowFlags(II)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 324
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFlags(II)V

    .line 323
    return-void
.end method

.method setWindowFormat(I)V
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 328
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setFormat(I)V

    .line 327
    return-void
.end method

.method showIme(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 332
    iget-object v0, p0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 331
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 8
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 272
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 273
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 274
    iget-wide v2, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    move-object v1, p0

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/app/NativeActivity;->onSurfaceChangedNative(JLandroid/view/Surface;III)V

    .line 271
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 265
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 266
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 267
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/app/NativeActivity;->onSurfaceCreatedNative(JLandroid/view/Surface;)V

    .line 264
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 287
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 288
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onSurfaceDestroyedNative(J)V

    .line 285
    :cond_0
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 279
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 280
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 281
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/app/NativeActivity;->onSurfaceRedrawNeededNative(JLandroid/view/Surface;)V

    .line 278
    :cond_0
    return-void
.end method
