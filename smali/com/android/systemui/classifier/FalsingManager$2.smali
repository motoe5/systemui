.class Lcom/android/systemui/classifier/FalsingManager$2;
.super Ljava/lang/Object;
.source "FalsingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/FalsingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/classifier/FalsingManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/FalsingManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/classifier/FalsingManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManager$2;->this$0:Lcom/android/systemui/classifier/FalsingManager;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager$2;->this$0:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onScreenTurningOn()V

    .line 277
    return-void
.end method
