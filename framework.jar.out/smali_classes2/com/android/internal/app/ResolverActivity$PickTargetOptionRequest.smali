.class Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;
.super Landroid/app/VoiceInteractor$PickOptionRequest;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PickTargetOptionRequest"
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "prompt"    # Landroid/app/VoiceInteractor$Prompt;
    .param p2, "options"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1911
    invoke-direct {p0, p1, p2, p3}, Landroid/app/VoiceInteractor$PickOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    .line 1910
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1916
    invoke-super {p0}, Landroid/app/VoiceInteractor$PickOptionRequest;->onCancel()V

    .line 1917
    invoke-virtual {p0}, Landroid/app/VoiceInteractor$Request;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity;

    .line 1918
    .local v0, "ra":Lcom/android/internal/app/ResolverActivity;
    if-eqz v0, :cond_0

    .line 1919
    invoke-static {v0, v1}, Lcom/android/internal/app/ResolverActivity;->-set1(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    .line 1920
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1915
    :cond_0
    return-void
.end method

.method public onPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "finished"    # Z
    .param p2, "selections"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p3, "result"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1926
    invoke-super {p0, p1, p2, p3}, Landroid/app/VoiceInteractor$PickOptionRequest;->onPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    .line 1927
    array-length v2, p2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 1930
    return-void

    .line 1933
    :cond_0
    invoke-virtual {p0}, Landroid/app/VoiceInteractor$Request;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity;

    .line 1934
    .local v0, "ra":Lcom/android/internal/app/ResolverActivity;
    if-eqz v0, :cond_1

    .line 1935
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->-get0(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v2

    aget-object v3, p2, v4

    invoke-virtual {v3}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v1

    .line 1936
    .local v1, "ti":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1937
    invoke-static {v0, v5}, Lcom/android/internal/app/ResolverActivity;->-set1(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    .line 1938
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1925
    .end local v1    # "ti":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    :cond_1
    return-void
.end method
