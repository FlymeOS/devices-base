.class public Lcom/android/internal/app/ResolverTargetActionsDialogFragment;
.super Landroid/app/DialogFragment;
.source "ResolverTargetActionsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final APP_INFO_INDEX:I = 0x1

.field private static final NAME_KEY:Ljava/lang/String; = "componentName"

.field private static final PINNED_KEY:Ljava/lang/String; = "pinned"

.field private static final TITLE_KEY:Ljava/lang/String; = "title"

.field private static final TOGGLE_PIN_INDEX:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "pinned"    # Z

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 53
    const-string/jumbo v1, "componentName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 54
    const-string/jumbo v1, "pinned"

    invoke-virtual {v0, v1, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 74
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v6, "componentName"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 75
    .local v4, "name":Landroid/content/ComponentName;
    packed-switch p2, :pswitch_data_0

    .line 96
    :goto_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 72
    return-void

    .line 77
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity;->getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 78
    .local v5, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 80
    .local v1, "currentVal":Z
    if-eqz v1, :cond_0

    .line 81
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->recreate()V

    goto :goto_0

    .line 83
    :cond_0
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v3, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 90
    .end local v1    # "currentVal":Z
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    :pswitch_1
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 91
    const-string/jumbo v7, "package"

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 90
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    .line 92
    const/high16 v7, 0x80000

    .line 90
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 93
    .local v2, "in":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "pinned"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const v1, 0x107000d

    .line 64
    .local v1, "itemRes":I
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    const/4 v3, 0x1

    .line 64
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 67
    const-string/jumbo v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 64
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 63
    .end local v1    # "itemRes":I
    :cond_0
    const v1, 0x107000c

    .restart local v1    # "itemRes":I
    goto :goto_0
.end method
