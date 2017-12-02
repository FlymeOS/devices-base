.class public final Landroid/print/PrintAttributes$Resolution;
.super Ljava/lang/Object;
.source "PrintAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Resolution"
.end annotation


# instance fields
.field private final mHorizontalDpi:I

.field private final mId:Ljava/lang/String;

.field private final mLabel:Ljava/lang/String;

.field private final mVerticalDpi:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "horizontalDpi"    # I
    .param p4, "verticalDpi"    # I

    .prologue
    .line 1091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1093
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "id cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1096
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1097
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "label cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1099
    :cond_1
    if-gtz p3, :cond_2

    .line 1100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "horizontalDpi cannot be less than or equal to zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1103
    :cond_2
    if-gtz p4, :cond_3

    .line 1104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "verticalDpi cannot be less than or equal to zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1107
    :cond_3
    iput-object p1, p0, Landroid/print/PrintAttributes$Resolution;->mId:Ljava/lang/String;

    .line 1108
    iput-object p2, p0, Landroid/print/PrintAttributes$Resolution;->mLabel:Ljava/lang/String;

    .line 1109
    iput p3, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    .line 1110
    iput p4, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    .line 1092
    return-void
.end method

.method static createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Resolution;
    .locals 5
    .param p0, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1162
    new-instance v0, Landroid/print/PrintAttributes$Resolution;

    .line 1163
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1164
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1165
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1166
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1162
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/print/PrintAttributes$Resolution;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1180
    if-ne p0, p1, :cond_0

    .line 1181
    return v4

    .line 1183
    :cond_0
    if-nez p1, :cond_1

    .line 1184
    return v3

    .line 1186
    :cond_1
    invoke-virtual {p0}, Landroid/print/PrintAttributes$Resolution;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 1187
    return v3

    :cond_2
    move-object v0, p1

    .line 1189
    check-cast v0, Landroid/print/PrintAttributes$Resolution;

    .line 1190
    .local v0, "other":Landroid/print/PrintAttributes$Resolution;
    iget v1, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    iget v2, v0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    if-eq v1, v2, :cond_3

    .line 1191
    return v3

    .line 1193
    :cond_3
    iget v1, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    iget v2, v0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    if-eq v1, v2, :cond_4

    .line 1194
    return v3

    .line 1196
    :cond_4
    return v4
.end method

.method public getHorizontalDpi()I
    .locals 1

    .prologue
    .line 1142
    iget v0, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Landroid/print/PrintAttributes$Resolution;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1133
    iget-object v0, p0, Landroid/print/PrintAttributes$Resolution;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getVerticalDpi()I
    .locals 1

    .prologue
    .line 1151
    iget v0, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 1171
    const/16 v0, 0x1f

    .line 1173
    .local v0, "prime":I
    iget v2, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    add-int/lit8 v1, v2, 0x1f

    .line 1174
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    add-int v1, v2, v3

    .line 1175
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1202
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Resolution{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    const-string/jumbo v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintAttributes$Resolution;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    const-string/jumbo v1, ", label: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintAttributes$Resolution;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    const-string/jumbo v1, ", horizontalDpi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1206
    const-string/jumbo v1, ", verticalDpi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1207
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1155
    iget-object v0, p0, Landroid/print/PrintAttributes$Resolution;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1156
    iget-object v0, p0, Landroid/print/PrintAttributes$Resolution;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1157
    iget v0, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1158
    iget v0, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1154
    return-void
.end method
