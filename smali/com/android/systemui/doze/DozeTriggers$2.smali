.class Lcom/android/systemui/doze/DozeTriggers$2;
.super Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;
.source "DozeTriggers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeTriggers;

.field final synthetic val$performedProxCheck:Z

.field final synthetic val$reason:I

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeTriggers;JIZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeTriggers;
    .param p2, "this$0_1"    # Lcom/android/systemui/doze/DozeTriggers;

    .prologue
    .line 1
    iput-object p2, p0, Lcom/android/systemui/doze/DozeTriggers$2;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    iput-wide p3, p0, Lcom/android/systemui/doze/DozeTriggers$2;->val$start:J

    iput p5, p0, Lcom/android/systemui/doze/DozeTriggers$2;->val$reason:I

    iput-boolean p6, p0, Lcom/android/systemui/doze/DozeTriggers$2;->val$performedProxCheck:Z

    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;-><init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onProximityResult(I)V
    .locals 9
    .param p1, "result"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 199
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 200
    .local v0, "end":J
    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers$2;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeTriggers;->-get1(Lcom/android/systemui/doze/DozeTriggers;)Landroid/content/Context;

    move-result-object v5

    if-ne p1, v3, :cond_0

    move v2, v3

    .line 201
    :goto_0
    iget-wide v6, p0, Lcom/android/systemui/doze/DozeTriggers$2;->val$start:J

    sub-long v6, v0, v6

    iget v8, p0, Lcom/android/systemui/doze/DozeTriggers$2;->val$reason:I

    .line 200
    invoke-static {v5, v2, v6, v7, v8}, Lcom/android/systemui/doze/DozeLog;->traceProximityResult(Landroid/content/Context;ZJI)V

    .line 202
    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeTriggers$2;->val$performedProxCheck:Z

    if-eqz v2, :cond_1

    .line 204
    return-void

    :cond_0
    move v2, v4

    .line 200
    goto :goto_0

    .line 207
    :cond_1
    if-ne p1, v3, :cond_2

    .line 208
    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers$2;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v2, v4}, Lcom/android/systemui/doze/DozeTriggers;->-set0(Lcom/android/systemui/doze/DozeTriggers;Z)Z

    .line 209
    return-void

    .line 213
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers$2;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    iget v3, p0, Lcom/android/systemui/doze/DozeTriggers$2;->val$reason:I

    invoke-static {v2, v3}, Lcom/android/systemui/doze/DozeTriggers;->-wrap0(Lcom/android/systemui/doze/DozeTriggers;I)V

    .line 214
    return-void
.end method
