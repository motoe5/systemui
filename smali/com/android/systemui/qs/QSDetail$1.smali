.class Lcom/android/systemui/qs/QSDetail$1;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Lcom/android/systemui/qs/QSDetail$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetail;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSDetail;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onScanStateChanged(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    new-instance v1, Lcom/android/systemui/qs/QSDetail$1$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/QSDetail$1$3;-><init>(Lcom/android/systemui/qs/QSDetail$1;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetail;->post(Ljava/lang/Runnable;)Z

    .line 336
    return-void
.end method

.method public onShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V
    .locals 2
    .param p1, "detail"    # Lcom/android/systemui/plugins/qs/DetailAdapter;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    new-instance v1, Lcom/android/systemui/qs/QSDetail$1$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/qs/QSDetail$1$2;-><init>(Lcom/android/systemui/qs/QSDetail$1;Lcom/android/systemui/plugins/qs/DetailAdapter;II)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetail;->post(Ljava/lang/Runnable;)Z

    .line 326
    return-void
.end method

.method public onToggleStateChanged(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    new-instance v1, Lcom/android/systemui/qs/QSDetail$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/QSDetail$1$1;-><init>(Lcom/android/systemui/qs/QSDetail$1;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetail;->post(Ljava/lang/Runnable;)Z

    .line 316
    return-void
.end method
