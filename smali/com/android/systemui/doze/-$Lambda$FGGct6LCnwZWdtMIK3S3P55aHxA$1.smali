.class final synthetic Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/doze/DozeHostService$1;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeHostService$1;->lambda$-com_android_systemui_doze_DozeHostService$1_3914()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA$1;->$m$0()V

    return-void
.end method
