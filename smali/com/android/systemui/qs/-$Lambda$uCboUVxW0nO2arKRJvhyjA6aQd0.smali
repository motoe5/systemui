.class final synthetic Lcom/android/systemui/qs/-$Lambda$uCboUVxW0nO2arKRJvhyjA6aQd0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/-$Lambda$uCboUVxW0nO2arKRJvhyjA6aQd0;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/plugins/qs/DetailAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/-$Lambda$uCboUVxW0nO2arKRJvhyjA6aQd0;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/qs/QSDetail;->lambda$-com_android_systemui_qs_QSDetail_9374(Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/-$Lambda$uCboUVxW0nO2arKRJvhyjA6aQd0;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/qs/-$Lambda$uCboUVxW0nO2arKRJvhyjA6aQd0;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/-$Lambda$uCboUVxW0nO2arKRJvhyjA6aQd0;->$m$0(Landroid/view/View;)V

    return-void
.end method
