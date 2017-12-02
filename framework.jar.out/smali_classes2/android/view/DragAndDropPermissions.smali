.class public final Landroid/view/DragAndDropPermissions;
.super Ljava/lang/Object;
.source "DragAndDropPermissions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/DragAndDropPermissions$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/DragAndDropPermissions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

.field private mPermissionOwnerToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Landroid/view/DragAndDropPermissions$1;

    invoke-direct {v0}, Landroid/view/DragAndDropPermissions$1;-><init>()V

    .line 121
    sput-object v0, Landroid/view/DragAndDropPermissions;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IDragAndDropPermissions$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IDragAndDropPermissions;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DragAndDropPermissions;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DragAndDropPermissions;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 145
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/DragAndDropPermissions;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/DragAndDropPermissions;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/view/IDragAndDropPermissions;)V
    .locals 0
    .param p1, "dragAndDropPermissions"    # Lcom/android/internal/view/IDragAndDropPermissions;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroid/view/DragAndDropPermissions;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    .line 75
    return-void
.end method

.method public static obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;
    .locals 2
    .param p0, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0}, Landroid/view/DragEvent;->getDragAndDropPermissions()Lcom/android/internal/view/IDragAndDropPermissions;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    return-object v1

    .line 71
    :cond_0
    new-instance v0, Landroid/view/DragAndDropPermissions;

    invoke-virtual {p0}, Landroid/view/DragEvent;->getDragAndDropPermissions()Lcom/android/internal/view/IDragAndDropPermissions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/DragAndDropPermissions;-><init>(Lcom/android/internal/view/IDragAndDropPermissions;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 115
    :try_start_0
    iget-object v1, p0, Landroid/view/DragAndDropPermissions;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    invoke-interface {v1}, Lcom/android/internal/view/IDragAndDropPermissions;->release()V

    .line 116
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/DragAndDropPermissions;->mPermissionOwnerToken:Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public take(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Landroid/view/DragAndDropPermissions;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IDragAndDropPermissions;->take(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    const/4 v1, 0x1

    return v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public takeTransient()Z
    .locals 3

    .prologue
    .line 101
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 102
    const-string/jumbo v2, "drop"

    .line 101
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/view/DragAndDropPermissions;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 103
    iget-object v1, p0, Landroid/view/DragAndDropPermissions;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    iget-object v2, p0, Landroid/view/DragAndDropPermissions;->mPermissionOwnerToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/android/internal/view/IDragAndDropPermissions;->takeTransient(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    const/4 v1, 0x1

    return v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 141
    iget-object v0, p0, Landroid/view/DragAndDropPermissions;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 142
    iget-object v0, p0, Landroid/view/DragAndDropPermissions;->mPermissionOwnerToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 140
    return-void
.end method
