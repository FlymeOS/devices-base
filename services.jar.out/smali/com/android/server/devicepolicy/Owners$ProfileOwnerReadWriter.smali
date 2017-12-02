.class Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;
.super Lcom/android/server/devicepolicy/Owners$FileReadWriter;
.source "Owners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/Owners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileOwnerReadWriter"
.end annotation


# instance fields
.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/devicepolicy/Owners;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/Owners;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/Owners;
    .param p2, "userId"    # I

    .prologue
    .line 652
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    .line 653
    invoke-virtual {p1, p2}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerFileWithTestOverride(I)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/Owners$FileReadWriter;-><init>(Ljava/io/File;)V

    .line 654
    iput p2, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->mUserId:I

    .line 652
    return-void
.end method


# virtual methods
.method readInner(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;)Z
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "depth"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 672
    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    .line 673
    return v3

    .line 675
    :cond_0
    const-string/jumbo v0, "profile-owner"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->-get2(Lcom/android/server/devicepolicy/Owners;)Landroid/util/ArrayMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    return v3

    .line 680
    :cond_1
    const-string/jumbo v0, "DevicePolicyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const/4 v0, 0x0

    return v0
.end method

.method shouldWrite()Z
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->-get2(Lcom/android/server/devicepolicy/Owners;)Landroid/util/ArrayMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method writeInner(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 664
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v1}, Lcom/android/server/devicepolicy/Owners;->-get2(Lcom/android/server/devicepolicy/Owners;)Landroid/util/ArrayMap;

    move-result-object v1

    iget v2, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->mUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 665
    .local v0, "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v0, :cond_0

    .line 666
    const-string/jumbo v1, "profile-owner"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 663
    :cond_0
    return-void
.end method
