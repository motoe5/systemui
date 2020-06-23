.class final synthetic Lcom/android/systemui/qs/customize/-$Lambda$pQ3JKx5515h-eZeun6umHO-Mluk$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/customize/-$Lambda$pQ3JKx5515h-eZeun6umHO-Mluk$3;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/-$Lambda$pQ3JKx5515h-eZeun6umHO-Mluk$3;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/-$Lambda$pQ3JKx5515h-eZeun6umHO-Mluk$3;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/-$Lambda$pQ3JKx5515h-eZeun6umHO-Mluk$3;->-$f3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/-$Lambda$pQ3JKx5515h-eZeun6umHO-Mluk$3;->-$f4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/qs/customize/TileQueryHelper;->lambda$-com_android_systemui_qs_customize_TileQueryHelper_7337(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/-$Lambda$pQ3JKx5515h-eZeun6umHO-Mluk$3;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/-$Lambda$pQ3JKx5515h-eZeun6umHO-Mluk$3;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/qs/customize/-$Lambda$pQ3JKx5515h-eZeun6umHO-Mluk$3;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/qs/customize/-$Lambda$pQ3JKx5515h-eZeun6umHO-Mluk$3;->-$f3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/systemui/qs/customize/-$Lambda$pQ3JKx5515h-eZeun6umHO-Mluk$3;->-$f4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/-$Lambda$pQ3JKx5515h-eZeun6umHO-Mluk$3;->$m$0()V

    return-void
.end method
