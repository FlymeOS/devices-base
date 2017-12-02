.class public Landroid/renderscript/Mesh;
.super Landroid/renderscript/BaseObj;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Mesh$AllocationBuilder;,
        Landroid/renderscript/Mesh$Builder;,
        Landroid/renderscript/Mesh$Primitive;,
        Landroid/renderscript/Mesh$TriangleMeshBuilder;
    }
.end annotation


# instance fields
.field mIndexBuffers:[Landroid/renderscript/Allocation;

.field mPrimitives:[Landroid/renderscript/Mesh$Primitive;

.field mVertexBuffers:[Landroid/renderscript/Allocation;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 94
    iget-object v0, p0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "destroy"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 92
    return-void
.end method


# virtual methods
.method public getIndexSetAllocation(I)Landroid/renderscript/Allocation;
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 138
    iget-object v0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPrimitive(I)Landroid/renderscript/Mesh$Primitive;
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 147
    iget-object v0, p0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPrimitiveCount()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    return v0

    .line 127
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    array-length v0, v0

    return v0
.end method

.method public getVertexAllocation(I)Landroid/renderscript/Allocation;
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 115
    iget-object v0, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getVertexAllocationCount()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    return v0

    .line 106
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    array-length v0, v0

    return v0
.end method

.method updateFromNative()V
    .locals 15

    .prologue
    .line 152
    invoke-super {p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    .line 153
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/RenderScript;->nMeshGetVertexBufferCount(J)I

    move-result v13

    .line 154
    .local v13, "vtxCount":I
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/RenderScript;->nMeshGetIndexCount(J)I

    move-result v6

    .line 156
    .local v6, "idxCount":I
    new-array v14, v13, [J

    .line 157
    .local v14, "vtxIDs":[J
    new-array v4, v6, [J

    .line 158
    .local v4, "idxIDs":[J
    new-array v5, v6, [I

    .line 160
    .local v5, "primitives":[I
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v14, v13}, Landroid/renderscript/RenderScript;->nMeshGetVertices(J[JI)V

    .line 161
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nMeshGetIndices(J[J[II)V

    .line 163
    new-array v1, v13, [Landroid/renderscript/Allocation;

    iput-object v1, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    .line 164
    new-array v1, v6, [Landroid/renderscript/Allocation;

    iput-object v1, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    .line 165
    new-array v1, v6, [Landroid/renderscript/Mesh$Primitive;

    iput-object v1, p0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v13, :cond_1

    .line 168
    aget-wide v2, v14, v0

    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    new-instance v7, Landroid/renderscript/Allocation;

    aget-wide v8, v14, v0

    iget-object v10, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct/range {v7 .. v12}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    aput-object v7, v1, v0

    .line 170
    iget-object v1, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->updateFromNative()V

    .line 167
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_3

    .line 175
    aget-wide v2, v4, v0

    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-eqz v1, :cond_2

    .line 176
    iget-object v1, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    new-instance v7, Landroid/renderscript/Allocation;

    aget-wide v8, v4, v0

    iget-object v10, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct/range {v7 .. v12}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    aput-object v7, v1, v0

    .line 177
    iget-object v1, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->updateFromNative()V

    .line 179
    :cond_2
    iget-object v1, p0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    invoke-static {}, Landroid/renderscript/Mesh$Primitive;->values()[Landroid/renderscript/Mesh$Primitive;

    move-result-object v2

    aget v3, v5, v0

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 151
    :cond_3
    return-void
.end method
