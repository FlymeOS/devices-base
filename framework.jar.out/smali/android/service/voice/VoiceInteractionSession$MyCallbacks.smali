.class Landroid/service/voice/VoiceInteractionSession$MyCallbacks;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;
.implements Landroid/inputmethodservice/SoftInputWindow$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionSession;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionSession;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/voice/VoiceInteractionSession;

    .prologue
    .line 788
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 791
    const/4 v7, 0x0

    .line 792
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 877
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :goto_0
    if-eqz v7, :cond_0

    .line 878
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 790
    :cond_0
    return-void

    .line 795
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;

    invoke-virtual {v1, v0}, Landroid/service/voice/VoiceInteractionSession;->onRequestConfirmation(Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;)V

    goto :goto_0

    .line 799
    :sswitch_1
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;

    invoke-virtual {v1, v0}, Landroid/service/voice/VoiceInteractionSession;->onRequestPickOption(Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;)V

    goto :goto_0

    .line 803
    :sswitch_2
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;

    invoke-virtual {v1, v0}, Landroid/service/voice/VoiceInteractionSession;->onRequestCompleteVoice(Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;)V

    goto :goto_0

    .line 807
    :sswitch_3
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;

    invoke-virtual {v1, v0}, Landroid/service/voice/VoiceInteractionSession;->onRequestAbortVoice(Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;)V

    goto :goto_0

    .line 811
    :sswitch_4
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/voice/VoiceInteractionSession$CommandRequest;

    invoke-virtual {v1, v0}, Landroid/service/voice/VoiceInteractionSession;->onRequestCommand(Landroid/service/voice/VoiceInteractionSession$CommandRequest;)V

    goto :goto_0

    .line 814
    :sswitch_5
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 816
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/service/voice/VoiceInteractionSession;->onGetSupportedCommands([Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 817
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->complete()V

    .line 818
    const/4 v7, 0x0

    .line 819
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    goto :goto_0

    .line 822
    :sswitch_6
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/voice/VoiceInteractionSession$Request;

    invoke-virtual {v1, v0}, Landroid/service/voice/VoiceInteractionSession;->onCancelRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    goto :goto_0

    .line 827
    :sswitch_7
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Landroid/service/voice/VoiceInteractionSession;->onTaskStarted(Landroid/content/Intent;I)V

    goto :goto_0

    .line 832
    :sswitch_8
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Landroid/service/voice/VoiceInteractionSession;->onTaskFinished(Landroid/content/Intent;I)V

    goto :goto_0

    .line 836
    :sswitch_9
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionSession;->onCloseSystemDialogs()V

    goto :goto_0

    .line 840
    :sswitch_a
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionSession;->doDestroy()V

    goto :goto_0

    .line 843
    :sswitch_b
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 847
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    iget v0, v7, Lcom/android/internal/os/SomeArgs;->argi5:I

    if-nez v0, :cond_1

    .line 848
    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/app/assist/AssistStructure;

    .line 849
    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v3, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Landroid/app/assist/AssistContent;

    .line 848
    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/service/voice/VoiceInteractionSession;->doOnHandleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Ljava/lang/Throwable;Landroid/app/assist/AssistContent;)V

    goto/16 :goto_0

    .line 851
    :cond_1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/app/assist/AssistStructure;

    .line 852
    iget-object v3, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v4, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v4, Landroid/app/assist/AssistContent;

    .line 853
    iget v5, v7, Lcom/android/internal/os/SomeArgs;->argi5:I

    iget v6, v7, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 851
    invoke-virtual/range {v0 .. v6}, Landroid/service/voice/VoiceInteractionSession;->doOnHandleAssistSecondary(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Ljava/lang/Throwable;Landroid/app/assist/AssistContent;II)V

    goto/16 :goto_0

    .line 858
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_c
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/service/voice/VoiceInteractionSession;->onHandleScreenshot(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 861
    :sswitch_d
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 865
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 866
    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    .line 865
    invoke-virtual {v2, v0, v3, v1}, Landroid/service/voice/VoiceInteractionSession;->doShow(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    goto/16 :goto_0

    .line 870
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_e
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionSession;->doHide()V

    goto/16 :goto_0

    .line 874
    :sswitch_f
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionSession;->onLockscreenShown()V

    goto/16 :goto_0

    .line 792
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x64 -> :sswitch_7
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
        0x67 -> :sswitch_a
        0x68 -> :sswitch_b
        0x69 -> :sswitch_c
        0x6a -> :sswitch_d
        0x6b -> :sswitch_e
        0x6c -> :sswitch_f
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionSession;->onBackPressed()V

    .line 883
    return-void
.end method
