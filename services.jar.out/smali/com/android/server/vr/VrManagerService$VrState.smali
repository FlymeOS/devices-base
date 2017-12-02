.class Lcom/android/server/vr/VrManagerService$VrState;
.super Ljava/lang/Object;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VrState"
.end annotation


# instance fields
.field final callingPackage:Landroid/content/ComponentName;

.field final defaultPermissionsGranted:Z

.field final enabled:Z

.field final targetPackageName:Landroid/content/ComponentName;

.field final timestamp:J

.field final userId:I


# direct methods
.method constructor <init>(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "targetPackageName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "callingPackage"    # Landroid/content/ComponentName;

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    .line 236
    iput p3, p0, Lcom/android/server/vr/VrManagerService$VrState;->userId:I

    .line 237
    iput-object p2, p0, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    .line 238
    iput-object p4, p0, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/vr/VrManagerService$VrState;->defaultPermissionsGranted:Z

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vr/VrManagerService$VrState;->timestamp:J

    .line 234
    return-void
.end method

.method constructor <init>(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "targetPackageName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "callingPackage"    # Landroid/content/ComponentName;
    .param p5, "defaultPermissionsGranted"    # Z

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    .line 246
    iput p3, p0, Lcom/android/server/vr/VrManagerService$VrState;->userId:I

    .line 247
    iput-object p2, p0, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    .line 248
    iput-object p4, p0, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    .line 249
    iput-boolean p5, p0, Lcom/android/server/vr/VrManagerService$VrState;->defaultPermissionsGranted:Z

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vr/VrManagerService$VrState;->timestamp:J

    .line 244
    return-void
.end method
