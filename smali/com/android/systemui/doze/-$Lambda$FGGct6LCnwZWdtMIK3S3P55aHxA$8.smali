.class final synthetic Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA$8;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/doze/DozeHostService$1;

    iget-boolean v1, p0, Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA$8;->-$f0:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeHostService$1;->lambda$-com_android_systemui_doze_DozeHostService$1_4670(Z)V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA$8;->-$f0:Z

    iput-object p2, p0, Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA$8;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA$8;->$m$0()V

    return-void
.end method
