.class public Landroid/app/ActivityOptions;
.super Ljava/lang/Object;
.source "ActivityOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityOptions$HideWindowListener;,
        Landroid/app/ActivityOptions$OnAnimationFinishedListener;,
        Landroid/app/ActivityOptions$OnAnimationStartedListener;
    }
.end annotation


# static fields
.field public static final ANIM_CLIP_REVEAL:I = 0xb

.field public static final ANIM_CUSTOM:I = 0x1

.field public static final ANIM_CUSTOM_IN_PLACE:I = 0xa

.field public static final ANIM_DEFAULT:I = 0x6

.field public static final ANIM_LAUNCH_TASK_BEHIND:I = 0x7

.field public static final ANIM_NONE:I = 0x0

.field public static final ANIM_SCALE_UP:I = 0x2

.field public static final ANIM_SCENE_TRANSITION:I = 0x5

.field public static final ANIM_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x9

.field public static final ANIM_THUMBNAIL_ASPECT_SCALE_UP:I = 0x8

.field public static final ANIM_THUMBNAIL_SCALE_DOWN:I = 0x4

.field public static final ANIM_THUMBNAIL_SCALE_UP:I = 0x3

.field public static final EXTRA_USAGE_TIME_REPORT:Ljava/lang/String; = "android.activity.usage_time"

.field public static final EXTRA_USAGE_TIME_REPORT_PACKAGES:Ljava/lang/String; = "android.usage_time_packages"

.field private static final KEY_ANIMATION_FINISHED_LISTENER:Ljava/lang/String; = "android:activity.animationFinishedListener"

.field public static final KEY_ANIM_ENTER_RES_ID:Ljava/lang/String; = "android:activity.animEnterRes"

.field public static final KEY_ANIM_EXIT_RES_ID:Ljava/lang/String; = "android:activity.animExitRes"

.field public static final KEY_ANIM_HEIGHT:Ljava/lang/String; = "android:activity.animHeight"

.field public static final KEY_ANIM_IN_PLACE_RES_ID:Ljava/lang/String; = "android:activity.animInPlaceRes"

.field private static final KEY_ANIM_SPECS:Ljava/lang/String; = "android:activity.animSpecs"

.field public static final KEY_ANIM_START_LISTENER:Ljava/lang/String; = "android:activity.animStartListener"

.field public static final KEY_ANIM_START_X:Ljava/lang/String; = "android:activity.animStartX"

.field public static final KEY_ANIM_START_Y:Ljava/lang/String; = "android:activity.animStartY"

.field public static final KEY_ANIM_THUMBNAIL:Ljava/lang/String; = "android:activity.animThumbnail"

.field public static final KEY_ANIM_TYPE:Ljava/lang/String; = "android:activity.animType"

.field public static final KEY_ANIM_WIDTH:Ljava/lang/String; = "android:activity.animWidth"

.field private static final KEY_DOCK_CREATE_MODE:Ljava/lang/String; = "android:activity.dockCreateMode"

.field private static final KEY_EXIT_COORDINATOR_INDEX:Ljava/lang/String; = "android:activity.exitCoordinatorIndex"

.field public static final KEY_LAUNCH_BOUNDS:Ljava/lang/String; = "android:activity.launchBounds"

.field private static final KEY_LAUNCH_STACK_ID:Ljava/lang/String; = "android.activity.launchStackId"

.field private static final KEY_LAUNCH_TASK_ID:Ljava/lang/String; = "android.activity.launchTaskId"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "android:activity.packageName"

.field private static final KEY_RESULT_CODE:Ljava/lang/String; = "android:activity.resultCode"

.field private static final KEY_RESULT_DATA:Ljava/lang/String; = "android:activity.resultData"

.field private static final KEY_ROTATION_ANIMATION_HINT:Ljava/lang/String; = "android:activity.rotationAnimationHint"

.field private static final KEY_TASK_OVERLAY:Ljava/lang/String; = "android.activity.taskOverlay"

.field private static final KEY_TRANSITION_COMPLETE_LISTENER:Ljava/lang/String; = "android:activity.transitionCompleteListener"

.field private static final KEY_TRANSITION_IS_RETURNING:Ljava/lang/String; = "android:activity.transitionIsReturning"

.field private static final KEY_TRANSITION_SHARED_ELEMENTS:Ljava/lang/String; = "android:activity.sharedElementNames"

.field private static final KEY_USAGE_TIME_REPORT:Ljava/lang/String; = "android:activity.usageTimeReport"

.field private static final TAG:Ljava/lang/String; = "ActivityOptions"


# instance fields
.field private mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

.field private mAnimationFinishedListener:Landroid/os/IRemoteCallback;

.field private mAnimationStartedListener:Landroid/os/IRemoteCallback;

.field private mAnimationType:I

.field private mCustomEnterResId:I

.field private mCustomExitResId:I

.field private mCustomInPlaceResId:I

.field private mDockCreateMode:I

.field private mExitCoordinatorIndex:I

.field private mHeight:I

.field private mIsReturning:Z

.field private mLaunchBounds:Landroid/graphics/Rect;

.field private mLaunchStackId:I

.field private mLaunchTaskId:I

.field private mPackageName:Ljava/lang/String;

.field private mResultCode:I

.field private mResultData:Landroid/content/Intent;

.field private mRotationAnimationHint:I

.field private mSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStartX:I

.field private mStartY:I

.field private mTaskOverlay:Z

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mTransitionReceiver:Landroid/os/ResultReceiver;

.field private mUsageTimeReport:Landroid/app/PendingIntent;

.field private mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 243
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    .line 244
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 245
    iput v1, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    .line 248
    iput v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 794
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "opts"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput v4, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 243
    iput v5, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    .line 244
    iput v5, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 245
    iput v4, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    .line 248
    iput v5, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 801
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 803
    const-string/jumbo v3, "android:activity.packageName"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 805
    :try_start_0
    const-string/jumbo v3, "android:activity.usageTimeReport"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    :goto_0
    const-string/jumbo v3, "android:activity.launchBounds"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    .line 810
    const-string/jumbo v3, "android:activity.animType"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 811
    iget v3, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    packed-switch v3, :pswitch_data_0

    .line 853
    :goto_1
    :pswitch_0
    const-string/jumbo v3, "android.activity.launchStackId"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    .line 854
    const-string/jumbo v3, "android.activity.launchTaskId"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 855
    const-string/jumbo v3, "android.activity.taskOverlay"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    .line 856
    const-string/jumbo v3, "android:activity.dockCreateMode"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    .line 857
    const-string/jumbo v3, "android:activity.animSpecs"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 858
    const-string/jumbo v3, "android:activity.animSpecs"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 859
    .local v2, "specs":[Landroid/os/Parcelable;
    array-length v3, v2

    new-array v3, v3, [Landroid/view/AppTransitionAnimationSpec;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    .line 860
    array-length v3, v2

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_0

    .line 861
    iget-object v4, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    aget-object v3, v2, v1

    check-cast v3, Landroid/view/AppTransitionAnimationSpec;

    aput-object v3, v4, v1

    .line 860
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 806
    .end local v1    # "i":I
    .end local v2    # "specs":[Landroid/os/Parcelable;
    :catch_0
    move-exception v0

    .line 807
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "ActivityOptions"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 813
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_1
    const-string/jumbo v3, "android:activity.animEnterRes"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 814
    const-string/jumbo v3, "android:activity.animExitRes"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 816
    const-string/jumbo v3, "android:activity.animStartListener"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 815
    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto :goto_1

    .line 820
    :pswitch_2
    const-string/jumbo v3, "android:activity.animInPlaceRes"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    goto :goto_1

    .line 825
    :pswitch_3
    const-string/jumbo v3, "android:activity.animStartX"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 826
    const-string/jumbo v3, "android:activity.animStartY"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 827
    const-string/jumbo v3, "android:activity.animWidth"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 828
    const-string/jumbo v3, "android:activity.animHeight"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mHeight:I

    goto/16 :goto_1

    .line 835
    :pswitch_4
    const-string/jumbo v3, "android:activity.animThumbnail"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 836
    const-string/jumbo v3, "android:activity.animStartX"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 837
    const-string/jumbo v3, "android:activity.animStartY"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 838
    const-string/jumbo v3, "android:activity.animWidth"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 839
    const-string/jumbo v3, "android:activity.animHeight"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 841
    const-string/jumbo v3, "android:activity.animStartListener"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 840
    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto/16 :goto_1

    .line 845
    :pswitch_5
    const-string/jumbo v3, "android:activity.transitionCompleteListener"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 846
    const-string/jumbo v3, "android:activity.transitionIsReturning"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 847
    const-string/jumbo v3, "android:activity.sharedElementNames"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 848
    const-string/jumbo v3, "android:activity.resultData"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 849
    const-string/jumbo v3, "android:activity.resultCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 850
    const-string/jumbo v3, "android:activity.exitCoordinatorIndex"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    goto/16 :goto_1

    .line 864
    :cond_0
    const-string/jumbo v3, "android:activity.animationFinishedListener"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 866
    const-string/jumbo v3, "android:activity.animationFinishedListener"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 865
    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 868
    :cond_1
    const-string/jumbo v3, "android:activity.rotationAnimationHint"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 798
    return-void

    .line 811
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static abort(Landroid/app/ActivityOptions;)V
    .locals 0
    .param p0, "options"    # Landroid/app/ActivityOptions;

    .prologue
    .line 1013
    if-eqz p0, :cond_0

    .line 1014
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->abort()V

    .line 1012
    :cond_0
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;
    .locals 1
    .param p0, "bOptions"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 1008
    if-eqz p0, :cond_0

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0, p0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method private static makeAspectScaledThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p8, "scaleUp"    # Z

    .prologue
    .line 572
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 573
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 574
    if-eqz p8, :cond_0

    const/16 v2, 0x8

    :goto_0
    iput v2, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 576
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 577
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 578
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 579
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 580
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p3

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 581
    iput p4, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 582
    iput p5, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 583
    invoke-direct {v0, p6, p7}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 584
    return-object v0

    .line 575
    .end local v1    # "pts":[I
    :cond_0
    const/16 v2, 0x9

    goto :goto_0
.end method

.method public static makeBasic()Landroid/app/ActivityOptions;
    .locals 1

    .prologue
    .line 785
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 786
    .local v0, "opts":Landroid/app/ActivityOptions;
    return-object v0
.end method

.method public static makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 422
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 423
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/16 v2, 0xb

    iput v2, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 424
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 425
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 426
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p1

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 427
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 428
    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 429
    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 430
    return-object v0
.end method

.method public static makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I

    .prologue
    const/4 v0, 0x0

    .line 265
    invoke-static {p0, p1, p2, v0, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 289
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 290
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 291
    const/4 v1, 0x1

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 292
    iput p1, v0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 293
    iput p2, v0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 294
    invoke-direct {v0, p3, p4}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 295
    return-object v0
.end method

.method public static makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "animId"    # I

    .prologue
    .line 311
    if-nez p1, :cond_0

    .line 312
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "You must specify a valid animation."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 315
    :cond_0
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 316
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 317
    const/16 v1, 0xa

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 318
    iput p1, v0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    .line 319
    return-object v0
.end method

.method public static makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    .locals 4
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v3, 0x2

    .line 394
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 395
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 396
    iput v3, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 397
    new-array v1, v3, [I

    .line 398
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 399
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p1

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 400
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 401
    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 402
    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 403
    return-object v0
.end method

.method static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;ILandroid/content/Intent;)Landroid/app/ActivityOptions;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "exitCoordinator"    # Landroid/app/ExitTransitionCoordinator;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/app/ExitTransitionCoordinator;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/Intent;",
            ")",
            "Landroid/app/ActivityOptions;"
        }
    .end annotation

    .prologue
    .line 752
    .local p2, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 753
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x5

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 754
    iput-object p2, v0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 755
    iput-object p1, v0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 756
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 757
    iput p3, v0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 758
    iput-object p4, v0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 760
    iget-object v1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v1, p1}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    move-result v1

    .line 759
    iput v1, v0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    .line 761
    return-object v0
.end method

.method public static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "sharedElementName"    # Ljava/lang/String;

    .prologue
    .line 622
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/util/Pair;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static varargs makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/ActivityOptions;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 647
    .local p1, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 648
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 649
    iget-object v2, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    .line 648
    invoke-static {p0, v1, v0, v2, p1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/Window;Landroid/app/ActivityOptions;Landroid/app/SharedElementCallback;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;

    .line 650
    return-object v0
.end method

.method static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/Window;Landroid/app/ActivityOptions;Landroid/app/SharedElementCallback;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;
    .locals 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "opts"    # Landroid/app/ActivityOptions;
    .param p3, "callback"    # Landroid/app/SharedElementCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/Window;",
            "Landroid/app/ActivityOptions;",
            "Landroid/app/SharedElementCallback;",
            "[",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/ExitTransitionCoordinator;"
        }
    .end annotation

    .prologue
    .line 709
    .local p4, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 710
    const/4 v2, 0x6

    iput v2, p2, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 711
    const/4 v2, 0x0

    return-object v2

    .line 713
    :cond_0
    const/4 v2, 0x5

    iput v2, p2, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 715
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 716
    .local v5, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 718
    .local v7, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p4, :cond_3

    .line 719
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p4

    array-length v2, v0

    if-ge v9, v2, :cond_3

    .line 720
    aget-object v10, p4, v9

    .line 721
    .local v10, "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    iget-object v11, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 722
    .local v11, "sharedElementName":Ljava/lang/String;
    if-nez v11, :cond_1

    .line 723
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Shared element name must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 725
    :cond_1
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    iget-object v12, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Landroid/view/View;

    .line 727
    .local v12, "view":Landroid/view/View;
    if-nez v12, :cond_2

    .line 728
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Shared element must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 730
    :cond_2
    iget-object v2, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 734
    .end local v9    # "i":I
    .end local v10    # "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    .end local v11    # "sharedElementName":Ljava/lang/String;
    .end local v12    # "view":Landroid/view/View;
    :cond_3
    new-instance v1, Landroid/app/ExitTransitionCoordinator;

    .line 735
    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p3

    move-object v6, v5

    .line 734
    invoke-direct/range {v1 .. v8}, Landroid/app/ExitTransitionCoordinator;-><init>(Landroid/app/Activity;Landroid/view/Window;Landroid/app/SharedElementCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 736
    .local v1, "exit":Landroid/app/ExitTransitionCoordinator;
    iput-object v1, p2, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 737
    iput-object v5, p2, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 738
    if-nez p0, :cond_4

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p2, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 739
    if-nez p0, :cond_5

    .line 740
    const/4 v2, -0x1

    iput v2, p2, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    .line 745
    :goto_2
    return-object v1

    .line 738
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 743
    :cond_5
    iget-object v2, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v2, v1}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    move-result v2

    .line 742
    iput v2, p2, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    goto :goto_2
.end method

.method public static makeTaskLaunchBehind()Landroid/app/ActivityOptions;
    .locals 2

    .prologue
    .line 775
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 776
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x7

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 777
    return-object v0
.end method

.method private static makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p5, "scaleUp"    # Z

    .prologue
    .line 505
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 506
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 507
    if-eqz p5, :cond_0

    const/4 v2, 0x3

    :goto_0
    iput v2, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 508
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 509
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 510
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 511
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 512
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p3

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 513
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v2, p4}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 514
    return-object v0

    .line 507
    .end local v1    # "pts":[I
    :cond_0
    const/4 v2, 0x4

    goto :goto_0
.end method

.method public static makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 9
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 566
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 565
    invoke-static/range {v0 .. v8}, Landroid/app/ActivityOptions;->makeAspectScaledThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static makeThumbnailAspectScaleDownAnimation(Landroid/view/View;[Landroid/view/AppTransitionAnimationSpec;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;
    .locals 2
    .param p0, "source"    # Landroid/view/View;
    .param p1, "specs"    # [Landroid/view/AppTransitionAnimationSpec;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "onAnimationStartedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p4, "onAnimationFinishedListener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .prologue
    .line 592
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 593
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 594
    const/16 v1, 0x9

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 595
    iput-object p1, v0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    .line 596
    invoke-direct {v0, p2, p3}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 597
    invoke-direct {v0, p2, p4}, Landroid/app/ActivityOptions;->setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    .line 598
    return-object v0
.end method

.method public static makeThumbnailAspectScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 9
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 540
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 539
    invoke-static/range {v0 .. v8}, Landroid/app/ActivityOptions;->makeAspectScaledThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static makeThumbnailScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 6
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 499
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/app/ActivityOptions;
    .locals 1
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I

    .prologue
    .line 454
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 6
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 477
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method private setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .prologue
    .line 349
    if-eqz p2, :cond_0

    .line 350
    new-instance v0, Landroid/app/ActivityOptions$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$2;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 348
    :cond_0
    return-void
.end method

.method private setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 324
    if-eqz p2, :cond_0

    .line 325
    new-instance v0, Landroid/app/ActivityOptions$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$1;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 323
    :cond_0
    return-void
.end method

.method public static varargs startSharedElementAnimation(Landroid/view/Window;[Landroid/util/Pair;)Landroid/app/ActivityOptions;
    .locals 5
    .param p0, "window"    # Landroid/view/Window;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "[",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/ActivityOptions;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .local p1, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 667
    new-instance v3, Landroid/app/ActivityOptions;

    invoke-direct {v3}, Landroid/app/ActivityOptions;-><init>()V

    .line 668
    .local v3, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 669
    .local v0, "decorView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 670
    return-object v3

    .line 673
    :cond_0
    invoke-static {v4, p0, v3, v4, p1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/Window;Landroid/app/ActivityOptions;Landroid/app/SharedElementCallback;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;

    move-result-object v1

    .line 674
    .local v1, "exit":Landroid/app/ExitTransitionCoordinator;
    if-eqz v1, :cond_1

    .line 675
    new-instance v2, Landroid/app/ActivityOptions$HideWindowListener;

    invoke-direct {v2, p0, v1}, Landroid/app/ActivityOptions$HideWindowListener;-><init>(Landroid/view/Window;Landroid/app/ExitTransitionCoordinator;)V

    .line 676
    .local v2, "listener":Landroid/app/ActivityOptions$HideWindowListener;
    invoke-virtual {v1, v2}, Landroid/app/ExitTransitionCoordinator;->setHideSharedElementsCallback(Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;)V

    .line 677
    invoke-virtual {v1}, Landroid/app/ExitTransitionCoordinator;->startExit()V

    .line 679
    .end local v2    # "listener":Landroid/app/ActivityOptions$HideWindowListener;
    :cond_1
    return-object v3
.end method

.method public static stopSharedElementAnimation(Landroid/view/Window;)V
    .locals 4
    .param p0, "window"    # Landroid/view/Window;

    .prologue
    const v3, 0x102005d

    const/4 v2, 0x0

    .line 690
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 691
    .local v0, "decorView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 692
    return-void

    .line 695
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 694
    check-cast v1, Landroid/app/ExitTransitionCoordinator;

    .line 696
    .local v1, "exit":Landroid/app/ExitTransitionCoordinator;
    if-eqz v1, :cond_1

    .line 697
    invoke-virtual {v1}, Landroid/app/ExitTransitionCoordinator;->cancelPendingTransitions()Z

    .line 698
    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    move-object v2, v0

    .line 699
    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 700
    invoke-virtual {v1}, Landroid/app/ExitTransitionCoordinator;->resetViews()V

    .line 701
    invoke-virtual {v1}, Landroid/app/ExitTransitionCoordinator;->clearState()V

    .line 702
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 689
    :cond_1
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 961
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_0

    .line 963
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    :cond_0
    :goto_0
    return-void

    .line 964
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public forTargetActivity()Landroid/app/ActivityOptions;
    .locals 3

    .prologue
    .line 1260
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1261
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1262
    .local v0, "result":Landroid/app/ActivityOptions;
    invoke-virtual {v0, p0}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    .line 1263
    return-object v0

    .line 1266
    .end local v0    # "result":Landroid/app/ActivityOptions;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAnimSpecs()[Landroid/view/AppTransitionAnimationSpec;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    return-object v0
.end method

.method public getAnimationFinishedListener()Landroid/os/IRemoteCallback;
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public getAnimationType()I
    .locals 1

    .prologue
    .line 903
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    return v0
.end method

.method public getCustomEnterResId()I
    .locals 1

    .prologue
    .line 908
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    return v0
.end method

.method public getCustomExitResId()I
    .locals 1

    .prologue
    .line 913
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    return v0
.end method

.method public getCustomInPlaceResId()I
    .locals 1

    .prologue
    .line 918
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    return v0
.end method

.method public getDockCreateMode()I
    .locals 1

    .prologue
    .line 1063
    iget v0, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    return v0
.end method

.method public getExitCoordinatorKey()I
    .locals 1

    .prologue
    .line 957
    iget v0, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 943
    iget v0, p0, Landroid/app/ActivityOptions;->mHeight:I

    return v0
.end method

.method public getLaunchBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getLaunchStackId()I
    .locals 1

    .prologue
    .line 1020
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    return v0
.end method

.method public getLaunchTaskBehind()Z
    .locals 2

    .prologue
    .line 791
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLaunchTaskId()I
    .locals 1

    .prologue
    .line 1041
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    return v0
.end method

.method public getOnAnimationStartListener()Landroid/os/IRemoteCallback;
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 993
    iget v0, p0, Landroid/app/ActivityOptions;->mResultCode:I

    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    return-object v0
.end method

.method public getResultReceiver()Landroid/os/ResultReceiver;
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public getRotationAnimationHint()I
    .locals 1

    .prologue
    .line 1275
    iget v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    return v0
.end method

.method public getSharedElementNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 986
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStartX()I
    .locals 1

    .prologue
    .line 928
    iget v0, p0, Landroid/app/ActivityOptions;->mStartX:I

    return v0
.end method

.method public getStartY()I
    .locals 1

    .prologue
    .line 933
    iget v0, p0, Landroid/app/ActivityOptions;->mStartY:I

    return v0
.end method

.method public getTaskOverlay()Z
    .locals 1

    .prologue
    .line 1058
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUsageTimeReport()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 938
    iget v0, p0, Landroid/app/ActivityOptions;->mWidth:I

    return v0
.end method

.method isCrossTask()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 981
    iget v1, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isReturning()Z
    .locals 1

    .prologue
    .line 971
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    return v0
.end method

.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    .prologue
    .line 1252
    iput-object p1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    .line 1251
    return-void
.end method

.method public setDockCreateMode(I)V
    .locals 0
    .param p1, "dockCreateMode"    # I

    .prologue
    .line 1068
    iput p1, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    .line 1067
    return-void
.end method

.method public setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .locals 1
    .param p1, "screenSpacePixelRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 882
    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :cond_0
    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    .line 883
    return-object p0
.end method

.method public setLaunchStackId(I)V
    .locals 0
    .param p1, "launchStackId"    # I

    .prologue
    .line 1026
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    .line 1025
    return-void
.end method

.method public setLaunchTaskId(I)V
    .locals 0
    .param p1, "taskId"    # I

    .prologue
    .line 1034
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 1033
    return-void
.end method

.method public setRotationAnimationHint(I)V
    .locals 0
    .param p1, "hint"    # I

    .prologue
    .line 1287
    iput p1, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 1286
    return-void
.end method

.method public setTaskOverlay(Z)V
    .locals 0
    .param p1, "taskOverlay"    # Z

    .prologue
    .line 1051
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    .line 1050
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1158
    iget v2, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 1159
    return-object v1

    .line 1161
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1162
    .local v0, "b":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1163
    const-string/jumbo v2, "android:activity.packageName"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    :cond_1
    iget-object v2, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    .line 1166
    const-string/jumbo v2, "android:activity.launchBounds"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1168
    :cond_2
    const-string/jumbo v2, "android:activity.animType"

    iget v3, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1169
    iget-object v2, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    if-eqz v2, :cond_3

    .line 1170
    const-string/jumbo v2, "android:activity.usageTimeReport"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1172
    :cond_3
    iget v2, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    packed-switch v2, :pswitch_data_0

    .line 1212
    :goto_0
    :pswitch_0
    const-string/jumbo v1, "android.activity.launchStackId"

    iget v2, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1213
    const-string/jumbo v1, "android.activity.launchTaskId"

    iget v2, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1214
    const-string/jumbo v1, "android.activity.taskOverlay"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1215
    const-string/jumbo v1, "android:activity.dockCreateMode"

    iget v2, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1216
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    if-eqz v1, :cond_4

    .line 1217
    const-string/jumbo v1, "android:activity.animSpecs"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1219
    :cond_4
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_5

    .line 1220
    const-string/jumbo v1, "android:activity.animationFinishedListener"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    invoke-interface {v2}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1222
    :cond_5
    const-string/jumbo v1, "android:activity.rotationAnimationHint"

    iget v2, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1224
    return-object v0

    .line 1174
    :pswitch_1
    const-string/jumbo v2, "android:activity.animEnterRes"

    iget v3, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1175
    const-string/jumbo v2, "android:activity.animExitRes"

    iget v3, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1176
    const-string/jumbo v2, "android:activity.animStartListener"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v3, :cond_6

    .line 1177
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1176
    :cond_6
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    .line 1180
    :pswitch_2
    const-string/jumbo v1, "android:activity.animInPlaceRes"

    iget v2, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1184
    :pswitch_3
    const-string/jumbo v1, "android:activity.animStartX"

    iget v2, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1185
    const-string/jumbo v1, "android:activity.animStartY"

    iget v2, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1186
    const-string/jumbo v1, "android:activity.animWidth"

    iget v2, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1187
    const-string/jumbo v1, "android:activity.animHeight"

    iget v2, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1193
    :pswitch_4
    const-string/jumbo v2, "android:activity.animThumbnail"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1194
    const-string/jumbo v2, "android:activity.animStartX"

    iget v3, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1195
    const-string/jumbo v2, "android:activity.animStartY"

    iget v3, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1196
    const-string/jumbo v2, "android:activity.animWidth"

    iget v3, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1197
    const-string/jumbo v2, "android:activity.animHeight"

    iget v3, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1198
    const-string/jumbo v2, "android:activity.animStartListener"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v3, :cond_7

    .line 1199
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1198
    :cond_7
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 1202
    :pswitch_5
    iget-object v1, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_8

    .line 1203
    const-string/jumbo v1, "android:activity.transitionCompleteListener"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1205
    :cond_8
    const-string/jumbo v1, "android:activity.transitionIsReturning"

    iget-boolean v2, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1206
    const-string/jumbo v1, "android:activity.sharedElementNames"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1207
    const-string/jumbo v1, "android:activity.resultData"

    iget-object v2, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1208
    const-string/jumbo v1, "android:activity.resultCode"

    iget v2, p0, Landroid/app/ActivityOptions;->mResultCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1209
    const-string/jumbo v1, "android:activity.exitCoordinatorIndex"

    iget v2, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ActivityOptions("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "), mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1294
    const-string/jumbo v1, ", mAnimationType="

    .line 1293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1294
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1294
    const-string/jumbo v1, ", mStartX="

    .line 1293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1294
    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1294
    const-string/jumbo v1, ", mStartY="

    .line 1293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1295
    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1295
    const-string/jumbo v1, ", mWidth="

    .line 1293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1295
    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1295
    const-string/jumbo v1, ", mHeight="

    .line 1293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1295
    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/app/ActivityOptions;)V
    .locals 4
    .param p1, "otherOptions"    # Landroid/app/ActivityOptions;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1077
    iget-object v1, p1, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1078
    iget-object v1, p1, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1080
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    .line 1081
    iput-object v3, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 1082
    iput-object v3, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 1083
    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 1084
    iput-object v3, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 1085
    iput v2, p0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 1086
    iput v2, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    .line 1087
    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    iput v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1088
    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    packed-switch v1, :pswitch_data_0

    .line 1145
    :goto_0
    :pswitch_0
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    .line 1146
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 1076
    return-void

    .line 1090
    :pswitch_1
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 1091
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomExitResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 1092
    iput-object v3, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 1093
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_1

    .line 1095
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1099
    :cond_1
    :goto_1
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto :goto_0

    .line 1102
    :pswitch_2
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    goto :goto_0

    .line 1105
    :pswitch_3
    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1106
    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1107
    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1108
    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1109
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_2

    .line 1111
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1115
    :cond_2
    :goto_2
    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto :goto_0

    .line 1121
    :pswitch_4
    iget-object v1, p1, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 1122
    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1123
    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1124
    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1125
    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1126
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_3

    .line 1128
    :try_start_2
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1132
    :cond_3
    :goto_3
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto :goto_0

    .line 1135
    :pswitch_5
    iget-object v1, p1, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 1136
    iget-object v1, p1, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 1137
    iget-boolean v1, p1, Landroid/app/ActivityOptions;->mIsReturning:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 1138
    iput-object v3, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 1139
    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 1140
    iget-object v1, p1, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 1141
    iget v1, p1, Landroid/app/ActivityOptions;->mResultCode:I

    iput v1, p0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 1142
    iget v1, p1, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    iput v1, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    goto/16 :goto_0

    .line 1129
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_3

    .line 1112
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 1096
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 1088
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
