.class public abstract Landroid/content/pm/ShortcutServiceInternal;
.super Ljava/lang/Object;
.source "ShortcutServiceInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addListener(Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;)V
.end method

.method public abstract createShortcutIntents(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[Landroid/content/Intent;
.end method

.method public abstract getShortcutIconFd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract getShortcutIconResId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ComponentName;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasShortcutHostPermission(ILjava/lang/String;)Z
.end method

.method public abstract isPinnedByCaller(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract pinShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method
