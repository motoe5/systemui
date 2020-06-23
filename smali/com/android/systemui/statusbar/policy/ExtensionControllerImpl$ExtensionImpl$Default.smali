.class Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$Default;
.super Ljava/lang/Object;
.source "ExtensionControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$Default;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl<TT;>.Default<TT;>;"
    .local p1, "this$1":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl<TT;>;"
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$Default;->this$1:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$Default;->mSupplier:Ljava/util/function/Supplier;

    .line 229
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 239
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$Default;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl<TT;>.Default<TT;>;"
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$Default;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl<TT;>.Default<TT;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$Default;->mSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
