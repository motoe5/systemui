.class Lcom/android/systemui/doze/DozeUi$1;
.super Lcom/android/systemui/doze/IDozeHostPulseCallback$Stub;
.source "DozeUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/DozeUi;->pulseWhileDozing(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeUi;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeUi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeUi;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/doze/DozeUi$1;->this$0:Lcom/android/systemui/doze/DozeUi;

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/doze/IDozeHostPulseCallback$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPulseFinished()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi$1;->this$0:Lcom/android/systemui/doze/DozeUi;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeUi;->-get0(Lcom/android/systemui/doze/DozeUi;)Lcom/android/systemui/doze/DozeMachine;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 72
    return-void
.end method

.method public onPulseStarted()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi$1;->this$0:Lcom/android/systemui/doze/DozeUi;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeUi;->-get0(Lcom/android/systemui/doze/DozeUi;)Lcom/android/systemui/doze/DozeMachine;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 67
    return-void
.end method
