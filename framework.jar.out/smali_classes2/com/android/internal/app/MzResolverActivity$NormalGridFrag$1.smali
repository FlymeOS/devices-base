.class Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;
.super Ljava/lang/Object;
.source "MzResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

.field final synthetic val$adapter:Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;


# direct methods
.method constructor <init>(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;
    .param p2, "val$adapter"    # Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;

    .prologue
    .line 2181
    iput-object p1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;->this$1:Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    iput-object p2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;->val$adapter:Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    .line 2185
    const/4 v0, 0x0

    .line 2186
    .local v0, "alwaysCheck":Z
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;->this$1:Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    invoke-static {v3}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->-get0(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)Lcom/android/internal/app/MzResolverActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/MzResolverActivity;->-get3(Lcom/android/internal/app/MzResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2187
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;->this$1:Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    invoke-static {v3}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->-get1(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)Landroid/widget/CheckBox;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;->this$1:Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    invoke-static {v3}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->-get1(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 2192
    .end local v0    # "alwaysCheck":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;->this$1:Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    invoke-static {v3}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->-get0(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)Lcom/android/internal/app/MzResolverActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/MzResolverActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2193
    return-void

    .line 2187
    .restart local v0    # "alwaysCheck":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2190
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2195
    .end local v0    # "alwaysCheck":Z
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;->this$1:Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    invoke-static {v3}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->-get0(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)Lcom/android/internal/app/MzResolverActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/MzResolverActivity;->-get3(Lcom/android/internal/app/MzResolverActivity;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2196
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;->this$1:Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    invoke-static {v3}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->-get0(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)Lcom/android/internal/app/MzResolverActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;->this$1:Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    invoke-static {v4}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->-get0(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)Lcom/android/internal/app/MzResolverActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/app/MzResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 2197
    const-string/jumbo v5, "android.intent.extra.requset_result"

    const/4 v6, 0x0

    .line 2196
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/internal/app/MzResolverActivity;->mReturnResult:Z

    .line 2198
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;->this$1:Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    invoke-static {v3}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->-get0(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)Lcom/android/internal/app/MzResolverActivity;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/internal/app/MzResolverActivity;->mReturnResult:Z

    if-eqz v3, :cond_3

    .line 2199
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;->this$1:Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    invoke-static {v3}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->-get0(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)Lcom/android/internal/app/MzResolverActivity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/app/MzResolverActivity;->setResult(I)V

    .line 2202
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;->val$adapter:Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;

    invoke-virtual {v3, p3, v7}, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 2203
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;->val$adapter:Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;

    invoke-virtual {v3, p3, v7}, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->intentForPosition(IZ)Landroid/content/Intent;

    move-result-object v1

    .line 2204
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "MzResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "intent action :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    const-string/jumbo v3, "MzResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "intent clipData :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    const-string/jumbo v3, "MzResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getClassName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;->this$1:Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    invoke-static {v3}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->-get0(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)Lcom/android/internal/app/MzResolverActivity;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v0}, Lcom/android/internal/app/MzResolverActivity;->onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V

    .line 2209
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;->this$1:Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    invoke-static {v3}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->-get0(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)Lcom/android/internal/app/MzResolverActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/MzResolverActivity;->finish()V

    .line 2183
    return-void
.end method
