.class Lcom/android/systemui/pip/phone/PipMenuActivity$3;
.super Ljava/lang/Object;
.source "PipMenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/phone/PipMenuActivity;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$3;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$3;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->-wrap1(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    .line 168
    return-void
.end method
