.class Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
.super Ljava/lang/Object;
.source "MOTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/omadm/MOTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NodeData"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->setPath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->mName:Ljava/lang/String;

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->mPath:Ljava/lang/String;

    .line 100
    return-void
.end method

.method private setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->mValue:Ljava/lang/String;

    .line 104
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->mValue:Ljava/lang/String;

    return-object v0
.end method
