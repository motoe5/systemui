.class final synthetic Lcom/android/systemui/qs/external/-$Lambda$M-9wkumtBYjk9ehcB0Dp3L-O2lE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/external/-$Lambda$M-9wkumtBYjk9ehcB0Dp3L-O2lE;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/external/TileServices;

    iget-object v1, p0, Lcom/android/systemui/qs/external/-$Lambda$M-9wkumtBYjk9ehcB0Dp3L-O2lE;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/external/TileServices;->lambda$-com_android_systemui_qs_external_TileServices_3855(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/external/-$Lambda$M-9wkumtBYjk9ehcB0Dp3L-O2lE;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/qs/external/-$Lambda$M-9wkumtBYjk9ehcB0Dp3L-O2lE;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/external/-$Lambda$M-9wkumtBYjk9ehcB0Dp3L-O2lE;->$m$0()V

    return-void
.end method
