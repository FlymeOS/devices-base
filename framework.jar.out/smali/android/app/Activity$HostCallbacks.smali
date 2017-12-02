.class Landroid/app/Activity$HostCallbacks;
.super Landroid/app/FragmentHostCallback;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HostCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/FragmentHostCallback",
        "<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/Activity;

    .prologue
    .line 7101
    iput-object p1, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    .line 7102
    invoke-direct {p0, p1}, Landroid/app/FragmentHostCallback;-><init>(Landroid/app/Activity;)V

    .line 7101
    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 7180
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 7179
    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 7107
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7106
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 7186
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onGetHost()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 7132
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    return-object v0
.end method

.method public bridge synthetic onGetHost()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7131
    invoke-virtual {p0}, Landroid/app/Activity$HostCallbacks;->onGetHost()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 7117
    iget-object v1, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 7118
    .local v0, "result":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroid/app/Activity$HostCallbacks;->onUseFragmentManagerInflaterFactory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7119
    iget-object v1, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    return-object v1

    .line 7121
    :cond_0
    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 2

    .prologue
    .line 7174
    iget-object v1, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 7175
    .local v0, "w":Landroid/view/Window;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0
.end method

.method public onHasView()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 7191
    iget-object v2, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 7192
    .local v0, "w":Landroid/view/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onHasWindowAnimations()Z
    .locals 1

    .prologue
    .line 7169
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInvalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 7137
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 7136
    return-void
.end method

.method public onRequestPermissionsFromFragment(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .locals 4
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    .line 7162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "@android:requestPermissions:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7163
    .local v1, "who":Ljava/lang/String;
    iget-object v2, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 7164
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, p3, v3}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 7161
    return-void
.end method

.method public onShouldSaveFragmentState(Landroid/app/Fragment;)Z
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 7112
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 7143
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 7142
    return-void
.end method

.method public onStartIntentSenderFromFragment(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 7150
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 7151
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    move-object v1, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Landroid/app/Activity;->-wrap0(Landroid/app/Activity;Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    .line 7149
    :cond_0
    :goto_0
    return-void

    .line 7153
    :cond_1
    if-eqz p8, :cond_0

    .line 7154
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->startIntentSenderFromChildFragment(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onUseFragmentManagerInflaterFactory()Z
    .locals 2

    .prologue
    .line 7127
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
