.class Lcom/android/systemui/DessertCaseDream$1;
.super Ljava/lang/Object;
.source "DessertCaseDream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DessertCaseDream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DessertCaseDream;


# direct methods
.method constructor <init>(Lcom/android/systemui/DessertCaseDream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/DessertCaseDream;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/DessertCaseDream$1;->this$0:Lcom/android/systemui/DessertCaseDream;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/DessertCaseDream$1;->this$0:Lcom/android/systemui/DessertCaseDream;

    invoke-static {v0}, Lcom/android/systemui/DessertCaseDream;->-get0(Lcom/android/systemui/DessertCaseDream;)Lcom/android/systemui/DessertCaseView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/DessertCaseView;->start()V

    .line 31
    return-void
.end method
