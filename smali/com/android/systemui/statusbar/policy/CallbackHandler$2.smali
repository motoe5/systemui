.class Lcom/android/systemui/statusbar/policy/CallbackHandler$2;
.super Ljava/lang/Object;
.source "CallbackHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/CallbackHandler;->setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/String;Ljava/lang/String;ZIZLcom/android/systemui/moto/ExtendedMobileDataInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field final synthetic val$activityIn:Z

.field final synthetic val$activityOut:Z

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$isWide:Z

.field final synthetic val$mobileDataInfo:Lcom/android/systemui/moto/ExtendedMobileDataInfo;

.field final synthetic val$qsIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field final synthetic val$qsType:I

.field final synthetic val$roaming:Z

.field final synthetic val$statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field final synthetic val$statusType:I

.field final synthetic val$subId:I

.field final synthetic val$typeContentDescription:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/String;Ljava/lang/String;ZIZLcom/android/systemui/moto/ExtendedMobileDataInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/CallbackHandler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$qsIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput p4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$statusType:I

    iput p5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$qsType:I

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$activityIn:Z

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$activityOut:Z

    iput-object p8, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$typeContentDescription:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$description:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$isWide:Z

    iput p11, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$subId:I

    iput-boolean p12, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$roaming:Z

    iput-object p13, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$mobileDataInfo:Lcom/android/systemui/moto/ExtendedMobileDataInfo;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->-get0(Lcom/android/systemui/statusbar/policy/CallbackHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "signalCluster$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 248
    .local v0, "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$qsIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$statusType:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$qsType:I

    .line 249
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$activityIn:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$activityOut:Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$typeContentDescription:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$description:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$isWide:Z

    .line 250
    iget v10, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$subId:I

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$roaming:Z

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$mobileDataInfo:Lcom/android/systemui/moto/ExtendedMobileDataInfo;

    .line 248
    invoke-interface/range {v0 .. v12}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/String;Ljava/lang/String;ZIZLcom/android/systemui/moto/ExtendedMobileDataInfo;)V

    goto :goto_0

    .line 252
    .end local v0    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    :cond_0
    return-void
.end method
