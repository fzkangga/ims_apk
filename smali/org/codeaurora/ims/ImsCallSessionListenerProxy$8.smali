.class Lorg/codeaurora/ims/ImsCallSessionListenerProxy$8;
.super Ljava/lang/Object;
.source "ImsCallSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

.field final synthetic val$profile:Landroid/telephony/ims/ImsCallProfile;

.field final synthetic val$session:Lcom/android/ims/internal/IImsCallSession;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsCallSessionListenerProxy;
    .param p2, "val$session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "val$profile"    # Landroid/telephony/ims/ImsCallProfile;

    .prologue
    .line 247
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$8;->this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iput-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$8;->val$session:Lcom/android/ims/internal/IImsCallSession;

    iput-object p3, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$8;->val$profile:Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 251
    :try_start_0
    const-string/jumbo v1, "callSessionHeld()"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$8;->this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$8;->val$session:Lcom/android/ims/internal/IImsCallSession;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$8;->val$profile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {v1, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$8;->this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    const-string/jumbo v2, "onCallSessionHeld()"

    invoke-static {v1, v0, v2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->-wrap1(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
