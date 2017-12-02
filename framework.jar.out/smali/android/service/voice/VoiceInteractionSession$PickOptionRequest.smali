.class public final Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;
.super Landroid/service/voice/VoiceInteractionSession$Request;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PickOptionRequest"
.end annotation


# instance fields
.field final mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

.field final mPrompt:Landroid/app/VoiceInteractor$Prompt;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p4, "session"    # Landroid/service/voice/VoiceInteractionSession;
    .param p5, "prompt"    # Landroid/app/VoiceInteractor$Prompt;
    .param p6, "options"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p7, "extras"    # Landroid/os/Bundle;

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    .line 496
    invoke-direct/range {v0 .. v5}, Landroid/service/voice/VoiceInteractionSession$Request;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/os/Bundle;)V

    .line 497
    iput-object p5, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    .line 498
    iput-object p6, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .line 495
    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 567
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/voice/VoiceInteractionSession$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 568
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mPrompt="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 569
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 570
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    if-eqz v3, :cond_2

    .line 571
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "Options:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 573
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    aget-object v2, v3, v0

    .line 574
    .local v2, "op":Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, ":"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "    mLabel="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 577
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "    mIndex="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getIndex()I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 579
    invoke-virtual {v2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->countSynonyms()I

    move-result v3

    if-lez v3, :cond_0

    .line 580
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "    Synonyms:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-virtual {v2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->countSynonyms()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 582
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "      #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 583
    const-string/jumbo v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getSynonymAt(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 581
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 586
    .end local v1    # "j":I
    :cond_0
    invoke-virtual {v2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 587
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "    mExtras="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 588
    invoke-virtual {v2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 572
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 566
    .end local v0    # "i":I
    .end local v2    # "op":Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    :cond_2
    return-void
.end method

.method public getOptions()[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 517
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/VoiceInteractor$Prompt;->getVoicePromptAt(I)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVoicePrompt()Landroid/app/VoiceInteractor$Prompt;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    return-object v0
.end method

.method public sendIntermediatePickOptionResult([Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "selections"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p2, "result"    # Landroid/os/Bundle;

    .prologue
    .line 551
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->sendPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    .line 550
    return-void
.end method

.method sendPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "finished"    # Z
    .param p2, "selections"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p3, "result"    # Landroid/os/Bundle;

    .prologue
    .line 534
    if-eqz p1, :cond_0

    .line 535
    :try_start_0
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession$Request;->finishRequest()V

    .line 537
    :cond_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallback:Lcom/android/internal/app/IVoiceInteractorCallback;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/app/IVoiceInteractorCallback;->deliverPickOptionResult(Lcom/android/internal/app/IVoiceInteractorRequest;Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :goto_0
    return-void

    .line 538
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendPickOptionResult([Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "selections"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p2, "result"    # Landroid/os/Bundle;

    .prologue
    .line 563
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->sendPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    .line 562
    return-void
.end method
